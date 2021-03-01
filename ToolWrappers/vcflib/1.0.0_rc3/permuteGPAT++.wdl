version 1.0

task PermuteGPAT {
  command <<<
    permuteGPAT__
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}