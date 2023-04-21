# Using Puppet, create a manifest that kills a process named killmenow

exec { 'killmenow':
  command => 'pkill -f "bash.*killmenow"',
  path    => '/usr/bin:/usr/sbin:/bin:/sbin',
  onlyif  => 'pgrep -f "bash.*killmenow"',
}
