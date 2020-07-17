version 1.0

task OmeroFsUsage {
  input {
    Boolean? reverse
    String? units
    Boolean? human_readable
    Boolean? groups
    Boolean? create
    String? server
    String? port
    String? group
    String? user
    String? password
    String? key
    String? sudo
    Boolean? quiet
    String obj
    String omer_o_userdir
    String omer_o_session_dir
    String omer_o_tmpdir
    String omer_o_password
  }
  command <<<
    omero fs usage \
      ~{obj} \
      ~{omer_o_userdir} \
      ~{omer_o_session_dir} \
      ~{omer_o_tmpdir} \
      ~{omer_o_password} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(units) then ("--units " +  '"' + units + '"') else ""} \
      ~{true="--human-readable" false="" human_readable} \
      ~{true="--groups" false="" groups} \
      ~{true="--create" false="" create} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(sudo) then ("--sudo " +  '"' + sudo + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    reverse: "Reverse sort order"
    units: "Units to use for disk usage"
    human_readable: "Use most appropriate units"
    groups: "Print size for all current user's groups"
    create: "Create a new session regardless of existing ones"
    server: "OMERO server hostname"
    port: "OMERO server port"
    group: "OMERO server default group"
    user: "OMERO username"
    password: "OMERO password"
    key: "OMERO session key (UUID of an active session)"
    sudo: "Create session as this admin. Changes meaning of password!"
    quiet: "Quiet mode. Causes most warning and diagnostic messages to be suppressed."
    obj: "Objects to be queried in the form '<Class>:<Id>[,<Id> ...]', or '<Class>:*' to query all the objects of the given type "
    omer_o_userdir: "Set the base directory containing the user's files. Default: $HOME/omero"
    omer_o_session_dir: "Set the base directory containing local sessions. Default: $OMERO_USERDIR/sessions"
    omer_o_tmpdir: "Set the base directory containing temporary files. Default: $OMERO_USERDIR/tmp"
    omer_o_password: "Set the user's password for creating new sessions. Ignored if -w or --password is used."
  }
}