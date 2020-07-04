version 1.0

task ArbDbServer {
  input {
    Boolean? use_asciidbversion
    Boolean? ccmd
    Boolean? name_sets_name
    Boolean? name_sets_extended
    Boolean? ali_sets_alignment
    Boolean? file_sets_file
    Boolean? fielddef_sets_field
    Boolean? readonly_mode
    Boolean? server_sets_dbserver
    Boolean? server_sets_jobserver
    Boolean? server_sets_mgrserver
    Boolean? server_sets_ptserver
    Boolean? port
  }
  command <<<
    arb_db_server \
      ~{true="-A" false="" use_asciidbversion} \
      ~{true="-Ccmd" false="" ccmd} \
      ~{true="-s" false="" name_sets_name} \
      ~{true="-e" false="" name_sets_extended} \
      ~{true="-a" false="" ali_sets_alignment} \
      ~{true="-d" false="" file_sets_file} \
      ~{true="-f" false="" fielddef_sets_field} \
      ~{true="-r" false="" readonly_mode} \
      ~{true="-D" false="" server_sets_dbserver} \
      ~{true="-J" false="" server_sets_jobserver} \
      ~{true="-M" false="" server_sets_mgrserver} \
      ~{true="-P" false="" server_sets_ptserver} \
      ~{true="-T" false="" port}
  >>>
  parameter_meta {
    use_asciidbversion: "use ASCII-DB-version"
    ccmd: "execute command 'cmd' on running server known command are: ping      test if server is up (crash or failure if not) save      save the database (use -d to change name) shutdown  shutdown running arb_db_server"
    name_sets_name: "<name>        sets species name to '<name>'"
    name_sets_extended: "<name>        sets extended name to '<name>'"
    ali_sets_alignment: "<ali>         sets alignment to '<ali>'"
    file_sets_file: "<file>        sets default file to '<file>'"
    fielddef_sets_field: "<field>=<def> sets DB field to '<field>' (using <def> as default)"
    readonly_mode: "read-only mode"
    server_sets_dbserver: "<server>      sets DB-server to '<server>'  [default = ':']"
    server_sets_jobserver: "<server>      sets job-server to '<server>' [default = 'ARB_JOB_SERVER']"
    server_sets_mgrserver: "<server>      sets MGR-server to '<server>' [default = 'ARB_MGR_SERVER']"
    server_sets_ptserver: "<server>      sets PT-server to '<server>'  [default = 'ARB_PT_SERVER']"
    port: "<[host]:port>   sets TCP connection to '<[host]:port>'"
  }
}