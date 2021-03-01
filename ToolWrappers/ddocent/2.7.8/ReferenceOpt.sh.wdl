version 1.0

task ReferenceOptsh {
  command <<<
    ReferenceOpt_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}