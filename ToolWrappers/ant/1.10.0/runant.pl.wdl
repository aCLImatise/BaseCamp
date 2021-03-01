version 1.0

task Runantpl {
  command <<<
    runant_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}