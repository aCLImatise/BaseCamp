version 1.0

task OmeroUserAdd {
  input {
    Boolean? admin
    String? user_password
    Boolean? no_password
    Array[String] group_id
    Array[String] group_name
    Boolean? create
    String? server
    String? port
    String? omero_server_default
    String? user
    String? password
    String? key
    String? sudo
    Boolean? quiet
    String username
    String first_name
    String last_name
    String id_name_join
    String omer_o_userdir
    String omer_o_session_dir
    String omer_o_tmpdir
    String omer_o_password
  }
  command <<<
    omero user add \
      ~{username} \
      ~{first_name} \
      ~{last_name} \
      ~{id_name_join} \
      ~{omer_o_userdir} \
      ~{omer_o_session_dir} \
      ~{omer_o_tmpdir} \
      ~{omer_o_password} \
      ~{true="--admin" false="" admin} \
      ~{if defined(user_password) then ("--userpassword " +  '"' + user_password + '"') else ""} \
      ~{true="--no-password" false="" no_password} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(group_name) then ("--group-name " +  '"' + group_name + '"') else ""} \
      ~{true="--create" false="" create} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(omero_server_default) then ("--group " +  '"' + omero_server_default + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(sudo) then ("--sudo " +  '"' + sudo + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    admin: "Whether the user should be an admin"
    user_password: "Password for user"
    no_password: "Create user with empty password"
    group_id: "ID  of the group(s) to join"
    group_name: "Name of the group(s) to join"
    create: "Create a new session regardless of existing ones"
    server: "OMERO server hostname"
    port: "OMERO server port"
    omero_server_default: "OMERO server default group"
    user: "OMERO username"
    password: "OMERO password"
    key: "OMERO session key (UUID of an active session)"
    sudo: "Create session as this admin. Changes meaning of password!"
    quiet: "Quiet mode. Causes most warning and diagnostic messages to be suppressed."
    username: "User's login name"
    first_name: "User's first name"
    last_name: "User's last name"
    id_name_join: "ID or name of the group(s) to join"
    omer_o_userdir: "Set the base directory containing the user's files. Default: $HOME/omero"
    omer_o_session_dir: "Set the base directory containing local sessions. Default: $OMERO_USERDIR/sessions"
    omer_o_tmpdir: "Set the base directory containing temporary files. Default: $OMERO_USERDIR/tmp"
    omer_o_password: "Set the user's password for creating new sessions. Ignored if -w or --password is used."
  }
}