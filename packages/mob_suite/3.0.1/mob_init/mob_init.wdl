version 1.0

task MobInit {
  input {
    Directory? database_directory
    Boolean? verbose
    Boolean? v
    Float three_dot_zero_dot_zero
  }
  command <<<
    mob_init \
      ~{three_dot_zero_dot_zero} \
      ~{if defined(database_directory) then ("--database_directory " +  '"' + database_directory + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mob_suite:3.0.1--py_0"
  }
  parameter_meta {
    database_directory: "Directory to download databases to. Defaults to\\n/usr/local/lib/python3.8/site-\\npackages/mob_suite/databases"
    verbose: "Set the verbosity level. Can by used multiple times"
    v: ""
    three_dot_zero_dot_zero: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}