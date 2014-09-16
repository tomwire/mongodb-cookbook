default['mongodb']['admin'] = {
  'username' => 'admin',
  'password' => 'admin',
  'roles' => %w(userAdminAnyDatabase dbAdminAnyDatabase),
  'database' => 'admin'
}

default['mongodb']['users'] = []

default['mongodb']['mongos_create_admin'] = false
