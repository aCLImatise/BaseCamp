version 1.0

task HailctlDev {
  command <<<
    hailctl dev
  >>>
  output {
    File out_stdout = stdout()
  }
}