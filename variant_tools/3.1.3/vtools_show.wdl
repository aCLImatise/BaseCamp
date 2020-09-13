version 1.0

task VtoolsShow {
  input {
    Boolean? save_snapshots
    String? limit
    String? verbosity
  }
  command <<<
    vtools show \
      ~{if (save_snapshots) then "--save_snapshots" else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    save_snapshots: "'. 'pipeline PIPELINE' for details of"
    limit: "Limit output to the first N records."
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}