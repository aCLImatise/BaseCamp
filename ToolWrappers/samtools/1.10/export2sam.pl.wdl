version 1.0

task Export2sampl {
  command <<<
    export2sam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}