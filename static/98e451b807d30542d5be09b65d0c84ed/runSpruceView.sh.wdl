version 1.0

task RunSpruceViewsh {
  command <<<
    runSpruceView_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}