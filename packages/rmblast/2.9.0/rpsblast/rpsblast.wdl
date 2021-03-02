version 1.0

task Rpsblast {
  command <<<
    rpsblast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}