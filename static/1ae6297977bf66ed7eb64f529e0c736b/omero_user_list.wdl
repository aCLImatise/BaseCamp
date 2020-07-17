version 1.0

task OmeroUserList {
  input {
    String? style
    Boolean? long
    Boolean? count
    Boolean? sort_by_id
    Boolean? sort_by_login
    Boolean? sort_by_first_name
    Boolean? sort_by_last_name
    Boolean? sort_by_email
    Boolean? create
    String? server
    String? port
    String? group
    String? user
    String? password
    String? key
    String? sudo
    Boolean? quiet
    String omer_o_userdir
    String omer_o_session_dir
    String omer_o_tmpdir
    String omer_o_password
  }
  command <<<
    omero user list \
      ~{omer_o_userdir} \
      ~{omer_o_session_dir} \
      ~{omer_o_tmpdir} \
      ~{omer_o_password} \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
      ~{true="--long" false="" long} \
      ~{true="--count" false="" count} \
      ~{true="--sort-by-id" false="" sort_by_id} \
      ~{true="--sort-by-login" false="" sort_by_login} \
      ~{true="--sort-by-first-name" false="" sort_by_first_name} \
      ~{true="--sort-by-last-name" false="" sort_by_last_name} \
      ~{true="--sort-by-email" false="" sort_by_email} \
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
    style: "use alternative output style (default=sql)"
    long: "Print comma-separated list of all groups (default)"
    count: "Print count of all groups"
    sort_by_id: "Sort users by ID (default)"
    sort_by_login: "Sort users by login"
    sort_by_first_name: "Sort users by first name"
    sort_by_last_name: "Sort users by last name"
    sort_by_email: "Sort users by email"
    create: "Create a new session regardless of existing ones"
    server: "OMERO server hostname"
    port: "OMERO server port"
    group: "OMERO server default group"
    user: "OMERO username"
    password: "OMERO password"
    key: "OMERO session key (UUID of an active session)"
    sudo: "Create session as this admin. Changes meaning of password!"
    quiet: "Quiet mode. Causes most warning and diagnostic messages to be suppressed."
    omer_o_userdir: "Set the base directory containing the user's files. Default: $HOME/omero"
    omer_o_session_dir: "Set the base directory containing local sessions. Default: $OMERO_USERDIR/sessions"
    omer_o_tmpdir: "Set the base directory containing temporary files. Default: $OMERO_USERDIR/tmp"
    omer_o_password: "Set the user's password for creating new sessions. Ignored if -w or --password is used."
  }
}