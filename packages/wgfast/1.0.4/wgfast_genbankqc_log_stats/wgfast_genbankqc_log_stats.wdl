version 1.0

task WgfastGenbankqcLogstats {
  input {
    File path
  }
  command <<<
    wgfast_genbankqc log_stats \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}