# The username / password combination that is used
# to authenticate with the mongo database
default['mongodb']['authentication']['username'] = 'admin'
default['mongodb']['authentication']['password'] = 'admin'

default['mongodb']['admin'] = {
  'username' => default['mongodb']['authentication']['username'],
  'password' => default['mongodb']['authentication']['password'],
  'roles' => %w(userAdminAnyDatabase dbAdminAnyDatabase),
  'database' => 'admin'
}

default['mongodb']['users'] = []
