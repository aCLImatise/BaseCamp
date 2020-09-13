version 1.0

task ArbNameServer {
  input {
    Boolean? kill
    Boolean? look
    Boolean? name_sets_species
    Boolean? name_sets_name
    Boolean? ali_sets_alignment
    Boolean? file_sets_file
    Boolean? fielddef_sets_field
    Boolean? readonly_mode
    Boolean? server_sets_dbserver
    Boolean? server__sets
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
      ~{if (kill) then "-kill" else ""} \
      ~{if (look) then "-look" else ""} \
      ~{if (name_sets_species) then "-s" else ""} \
      ~{if (name_sets_name) then "-e" else ""} \
      ~{if (ali_sets_alignment) then "-a" else ""} \
      ~{if (file_sets_file) then "-d" else ""} \
      ~{if (fielddef_sets_field) then "-f" else ""} \
      ~{if (readonly_mode) then "-r" else ""} \
      ~{if (server_sets_dbserver) then "-D" else ""} \
      ~{if (server__sets) then "-J" else ""} \
      ~{if (server_sets_mgrserver) then "-M" else ""} \
      ~{if (server_sets_ptserver) then "-P" else ""} \
      ~{if (port) then "-T" else ""}
  >>>
  parameter_meta {
    kill: ""
    look: ""
    name_sets_species: "<name>        sets species name to '<name>'"
    name_sets_name: "<name>        sets extended name to '<name>'"
    ali_sets_alignment: "<ali>         sets alignment to '<ali>'"
    file_sets_file: "<file>        sets default file to '<file>'"
    fielddef_sets_field: "<field>=<def> sets DB field to '<field>' (using <def> as default)"
    readonly_mode: "read-only mode"
    server_sets_dbserver: "<server>      sets DB-server to '<server>'  [default = ':']"
    server__sets: "<server>      sets job-server to '<server>' [default = 'ARB_JOB_SERVER']"
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