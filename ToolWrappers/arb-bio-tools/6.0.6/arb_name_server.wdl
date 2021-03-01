version 1.0

task ArbNameServer {
  input {
    Boolean? name_sets_species_name
    Boolean? name_sets_extended_name
    Boolean? ali_sets_alignment
    Boolean? file_sets_file
    Boolean? fielddef_sets_db
    Boolean? readonly_mode
    Boolean? server_sets_dbserver
    Boolean? server_sets_jobserver
    Boolean? server_sets_mgrserver
    Boolean? server_sets_ptserver
    Boolean? port
    String var_command
    String server_parameters
  }
  command <<<
    arb_name_server \
      ~{var_command} \
      ~{server_parameters} \
      ~{if (name_sets_species_name) then "-s" else ""} \
      ~{if (name_sets_extended_name) then "-e" else ""} \
      ~{if (ali_sets_alignment) then "-a" else ""} \
      ~{if (file_sets_file) then "-d" else ""} \
      ~{if (fielddef_sets_db) then "-f" else ""} \
      ~{if (readonly_mode) then "-r" else ""} \
      ~{if (server_sets_dbserver) then "-D" else ""} \
      ~{if (server_sets_jobserver) then "-J" else ""} \
      ~{if (server_sets_mgrserver) then "-M" else ""} \
      ~{if (server_sets_ptserver) then "-P" else ""} \
      ~{if (port) then "-T" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_sets_species_name: "<name>        sets species name to '<name>'"
    name_sets_extended_name: "<name>        sets extended name to '<name>'"
    ali_sets_alignment: "<ali>         sets alignment to '<ali>'"
    file_sets_file: "<file>        sets default file to '<file>'"
    fielddef_sets_db: "<field>=<def> sets DB field to '<field>' (using <def> as default)"
    readonly_mode: "read-only mode"
    server_sets_dbserver: "<server>      sets DB-server to '<server>'  [default = ':']"
    server_sets_jobserver: "<server>      sets job-server to '<server>' [default = 'ARB_JOB_SERVER']"
    server_sets_mgrserver: "<server>      sets MGR-server to '<server>' [default = 'ARB_MGR_SERVER']"
    server_sets_ptserver: "<server>      sets PT-server to '<server>'  [default = 'ARB_PT_SERVER']"
    port: "<[host]:port>   sets TCP connection to '<[host]:port>'"
    var_command: ""
    server_parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}