version 1.0

task OmeroTag {
  input {
    Boolean? create_new_session
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
    String list
    String list_sets
    String create_new_tag
    String create_set
    String load
    String link
  }
  command <<<
    omero tag \
      ~{omer_o_userdir} \
      ~{omer_o_session_dir} \
      ~{omer_o_tmpdir} \
      ~{omer_o_password} \
      ~{list} \
      ~{list_sets} \
      ~{create_new_tag} \
      ~{create_set} \
      ~{load} \
      ~{link} \
      ~{true="--create" false="" create_new_session} \
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
    create_new_session: "Create a new session regardless of existing ones"
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
    list: "List all the tags, grouped by tagset"
    list_sets: "List tag sets"
    create_new_tag: "Create a new tag"
    create_set: "Create a new tag set"
    load: "Import new tag(s) and tagset(s) from JSON file"
    link: "Link annotation to an object"
  }
}