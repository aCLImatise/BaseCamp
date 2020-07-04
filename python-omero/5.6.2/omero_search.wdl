version 1.0

task OmeroSearch {
  input {
    Boolean? index
    Boolean? no_parse
    Boolean? field
    String? from
    String? to
    String? date_type
    Boolean? admin
    Boolean? all
    Boolean? ids_only
    String? limit
    String? offset
    String? style
    Boolean? create
    String? server
    String? port
    String? group
    String? user
    String? password
    String? key
    String? sudo
    Boolean? quiet
    String type
    String query
    String omer_o_userdir
    String omer_o_session_dir
    String omer_o_tmpdir
    String omer_o_password
  }
  command <<<
    omero search \
      ~{type} \
      ~{query} \
      ~{omer_o_userdir} \
      ~{omer_o_session_dir} \
      ~{omer_o_tmpdir} \
      ~{omer_o_password} \
      ~{true="--index" false="" index} \
      ~{true="--no-parse" false="" no_parse} \
      ~{true="--field" false="" field} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""} \
      ~{if defined(date_type) then ("--date-type " +  '"' + date_type + '"') else ""} \
      ~{true="--admin" false="" admin} \
      ~{true="--all" false="" all} \
      ~{true="--ids-only" false="" ids_only} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
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
    index: "Index an object as a administrator"
    no_parse: "Pass the search string directly to Lucene with no parsing"
    field: "[FIELD [FIELD ...]]           Fields which should be searched (e.g. name, description, annotation)"
    from: "Start date for limiting searches (YYYY-MM-DD)"
    to: "End date for limiting searches (YYYY-MM-DD)"
    date_type: "Which field to use for --from/--to (default: acquisitionDate)"
    admin: "Run an admin query (deprecated; use 'all')"
    all: "Perform query on all groups"
    ids_only: "Show only the ids of returned objects"
    limit: "maximum number of return values (default=25)"
    offset: "number of entries to skip (default=0)"
    style: "use alternative output style (default=sql)"
    create: "Create a new session regardless of existing ones"
    server: "OMERO server hostname"
    port: "OMERO server port"
    group: "OMERO server default group"
    user: "OMERO username"
    password: "OMERO password"
    key: "OMERO session key (UUID of an active session)"
    sudo: "Create session as this admin. Changes meaning of password!"
    quiet: "Quiet mode. Causes most warning and diagnostic messages to be suppressed."
    type: "Object type to search for, e.g. 'Image' or 'Well'"
    query: "Single query to run"
    omer_o_userdir: "Set the base directory containing the user's files. Default: $HOME/omero"
    omer_o_session_dir: "Set the base directory containing local sessions. Default: $OMERO_USERDIR/sessions"
    omer_o_tmpdir: "Set the base directory containing temporary files. Default: $OMERO_USERDIR/tmp"
    omer_o_password: "Set the user's password for creating new sessions. Ignored if -w or --password is used."
  }
}