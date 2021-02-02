version 1.0

task HailctlAuth {
  command <<<
    hailctl auth
  >>>
  output {
    File out_stdout = stdout()
  }
}