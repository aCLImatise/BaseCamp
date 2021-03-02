version 1.0

task Psiblast {
  command <<<
    psiblast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}