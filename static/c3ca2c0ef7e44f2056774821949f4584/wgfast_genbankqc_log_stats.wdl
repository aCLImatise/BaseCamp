version 1.0

task WgfastGenbankqcLogstats {
  input {
    File path
  }
  command <<<
    wgfast_genbankqc log_stats \
      ~{path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}