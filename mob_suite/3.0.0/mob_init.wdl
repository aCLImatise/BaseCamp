version 1.0

task MobInit {
  input {
    String? database_directory
    Boolean? verbose
    Boolean? v
  }
  command <<<
    mob_init \
      ~{if defined(database_directory) then ("--database_directory " +  '"' + database_directory + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    database_directory: "Directory to download databases to. Defaults to /tmp/tmpck7ho0cl/lib/python3.8/site- packages/mob_suite/databases"
    verbose: "Set the verbosity level. Can by used multiple times"
    v: ""
  }
}