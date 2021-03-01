version 1.0

task RunECRsh {
  command <<<
    run_ECR_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}