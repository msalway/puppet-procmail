# @summary Procmail configuration
class procmail::config {
  $procmailrc_template = @(HERE)
    <%- if $dropprivs { -%>
    DROPPRIVS=yes
    <%- } -%>
    ORGMAIL=${HOME}/Maildir/
    DEFAULT=${ORGMAIL}
    
    | HERE

  file { '/etc/procmailrc':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => inline_epp($procmailrc_template,
      {
        'dropprivs' => true,
      }
    ),
  }
}
