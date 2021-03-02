version 1.0

task TalAAfa {
  command <<<
    tal_AA_fa
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}