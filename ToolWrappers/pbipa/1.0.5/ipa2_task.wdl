version 1.0

task Ipa2task {
  command <<<
    ipa2_task
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}