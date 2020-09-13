version 1.0

task XaLeap {
  command <<<
    xaLeap
  >>>
  output {
    File out_stdout = stdout()
  }
}