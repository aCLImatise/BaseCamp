version 1.0

task OmeroTestengine {
  input {
    Boolean? java_help
    Boolean? create
    String? server
    String? port
    String? group
    String? user
    String? password
    String? key
    String? sudo
    Boolean? quiet
    Boolean? bulk
    Boolean? log_prefix
    Boolean? file
    Boolean? errs
    String? client_dir
    String? log_back
    String? depth
    String? skip
    String? name
    String? description
    Boolean? report
    Boolean? upload
    Boolean? logs
    String? email
    String? annotation_ns
    String? annotation_text
    String? annotation_link
    Boolean? display_used_files
    Boolean? continue_importing_errors
    String? readers
    String? omero_dataset_id
    String? omero_screen_id
    String? target
    String? debug
    String? set_alternative_style
    String? encrypted
    Boolean? advanced_help
    Boolean? transfer
    Boolean? exclude
    Boolean? checksum_algorithm
    String? parallel_upload
    String? parallel_fileset
    String omer_o_userdir
    String omer_o_session_dir
    String omer_o_tmpdir
    String omer_o_password
    File path
  }
  command <<<
    omero testengine \
      ~{omer_o_userdir} \
      ~{omer_o_session_dir} \
      ~{omer_o_tmpdir} \
      ~{omer_o_password} \
      ~{path} \
      ~{true="--java-help" false="" java_help} \
      ~{true="--create" false="" create} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(key) then ("--key " +  '"' + key + '"') else ""} \
      ~{if defined(sudo) then ("--sudo " +  '"' + sudo + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--bulk" false="" bulk} \
      ~{true="--logprefix" false="" log_prefix} \
      ~{true="--file" false="" file} \
      ~{true="--errs" false="" errs} \
      ~{if defined(client_dir) then ("--clientdir " +  '"' + client_dir + '"') else ""} \
      ~{if defined(log_back) then ("--logback " +  '"' + log_back + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{true="--report" false="" report} \
      ~{true="--upload" false="" upload} \
      ~{true="--logs" false="" logs} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(annotation_ns) then ("--annotation-ns " +  '"' + annotation_ns + '"') else ""} \
      ~{if defined(annotation_text) then ("--annotation-text " +  '"' + annotation_text + '"') else ""} \
      ~{if defined(annotation_link) then ("--annotation-link " +  '"' + annotation_link + '"') else ""} \
      ~{true="-f" false="" display_used_files} \
      ~{true="-c" false="" continue_importing_errors} \
      ~{if defined(readers) then ("--readers " +  '"' + readers + '"') else ""} \
      ~{if defined(omero_dataset_id) then ("-d " +  '"' + omero_dataset_id + '"') else ""} \
      ~{if defined(omero_screen_id) then ("-r " +  '"' + omero_screen_id + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(set_alternative_style) then ("--output " +  '"' + set_alternative_style + '"') else ""} \
      ~{if defined(encrypted) then ("--encrypted " +  '"' + encrypted + '"') else ""} \
      ~{true="--advanced-help" false="" advanced_help} \
      ~{true="--transfer" false="" transfer} \
      ~{true="--exclude" false="" exclude} \
      ~{true="--checksum-algorithm" false="" checksum_algorithm} \
      ~{if defined(parallel_upload) then ("--parallel-upload " +  '"' + parallel_upload + '"') else ""} \
      ~{if defined(parallel_fileset) then ("--parallel-fileset " +  '"' + parallel_fileset + '"') else ""}
  >>>
  parameter_meta {
    java_help: "Show the Java help text"
    create: "Create a new session regardless of existing ones"
    server: "OMERO server hostname"
    port: "OMERO server port"
    group: "OMERO server default group"
    user: "OMERO username"
    password: "OMERO password"
    key: "OMERO session key (UUID of an active session)"
    sudo: "Create session as this admin. Changes meaning of password!"
    quiet: "Quiet mode. Causes most warning and diagnostic messages to be suppressed."
    bulk: "[BULK]                         Bulk YAML file for driving multiple imports"
    log_prefix: "[LOGPREFIX]               Directory or file prefix for --file and --errs"
    file: "[FILE]                         File for storing the standard out of the Java process"
    errs: "[ERRS]                         File for storing the standard err of the Java process"
    client_dir: "Path to the directory containing the client JARs.  Default: lib/client"
    log_back: "Path to a logback xml file.  Default: etc/logback-cli.xml"
    depth: "Number of directories to scan down for files"
    skip: "Optional step to skip during import"
    name: "Image or plate name to use (**)"
    description: "Image or plate description to use (**)"
    report: "Report errors to the OME team (**)"
    upload: "Upload broken files and log file (if any) with report. Required --report (**)"
    logs: "Upload log file (if any) with report. Required --report (**)"
    email: "Email for reported errors. Required --report (**)"
    annotation_ns: "Namespace to use for subsequent annotation (**)"
    annotation_text: "Content for a text annotation (**)"
    annotation_link: "Comment annotation ID to link all images to (**)"
    display_used_files: "Display the used files and exit (**)"
    continue_importing_errors: "Continue importing after errors (**)"
    readers: "Use the list of readers rather than the default (**)"
    omero_dataset_id: "OMERO dataset ID to import image into (**)"
    omero_screen_id: "OMERO screen ID to import plate into (**)"
    target: "OMERO target specification (**)"
    debug: "Turn debug logging on (**)"
    set_alternative_style: "Set an alternative output style"
    encrypted: "Whether the import should use SSL or not"
    advanced_help: "Show the advanced help text"
    transfer: "[TYPE]                     Transfer methods like in-place import"
    exclude: "[TYPE]                      Exclusion filters for preventing re-import"
    checksum_algorithm: "[TYPE]           Alternative hashing mechanisms balancing speed & accuracy"
    parallel_upload: "Number of file upload threads to run at the same time"
    parallel_fileset: "Number of fileset candidates to import at the same time"
    omer_o_userdir: "Set the base directory containing the user's files. Default: $HOME/omero"
    omer_o_session_dir: "Set the base directory containing local sessions. Default: $OMERO_USERDIR/sessions"
    omer_o_tmpdir: "Set the base directory containing temporary files. Default: $OMERO_USERDIR/tmp"
    omer_o_password: "Set the user's password for creating new sessions. Ignored if -w or --password is used."
    path: "Path to be passed to the Java process"
  }
}