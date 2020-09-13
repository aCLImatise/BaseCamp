version 1.0

task Ipa2task {
  command <<<
    ipa2_task
  >>>
  output {
    File out_stdout = stdout()
  }
}