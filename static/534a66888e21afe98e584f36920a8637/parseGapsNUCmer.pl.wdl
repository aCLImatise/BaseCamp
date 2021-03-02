version 1.0

task ParseGapsNUCmerpl {
  command <<<
    parseGapsNUCmer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}