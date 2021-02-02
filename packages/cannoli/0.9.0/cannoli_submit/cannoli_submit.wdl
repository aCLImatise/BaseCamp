version 1.0

task Cannolisubmit {
  command <<<
    cannoli_submit
  >>>
  output {
    File out_stdout = stdout()
  }
}