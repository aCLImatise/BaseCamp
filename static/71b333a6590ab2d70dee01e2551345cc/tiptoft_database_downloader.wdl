version 1.0

task TiptoftDatabaseDownloader {
  input {
    Boolean? verbose
    String output_prefix
  }
  command <<<
    tiptoft_database_downloader \
      ~{output_prefix} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Turn on debugging (default: False)"
    output_prefix: "Output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}