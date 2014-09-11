chef_gem 'mongo'

users = []
admin = node['mongodb']['admin']

# If authentication is required,
# add the admin to the users array for adding/updating
users << admin if node['mongodb']['config']['auth'] == true

users.concat(node['mongodb']['users'])

# Add each user specified in attributes
users.each do |user|
  mongodb_user user['username'] do
    password user['password']
    roles user['roles']
    database user['database']
    connection node['mongodb']
    if node['mongodb']['is_replicaset']
      # If it's a replicaset, don't make any users until the set is initialized
      action :nothing
      subscribes :add, 'ruby_block[config_replicaset]', :immediately
    end
  end
end
