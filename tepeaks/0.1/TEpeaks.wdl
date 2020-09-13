version 1.0

task TEpeaks {
  command <<<
    TEpeaks
  >>>
  output {
    File out_stdout = stdout()
  }
}