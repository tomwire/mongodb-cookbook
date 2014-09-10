default['mongodb']['authentication']['username'] = 'admin'
default['mongodb']['authentication']['password'] = 'admin'

default['mongodb']['admin'] = {
  'username' => 'admin',
  'password' => 'admin',
  'roles' => %w(userAdminAnyDatabase dbAdminAnyDatabase),
  'database' => 'admin'
}

default['mongodb']['users'] = []
