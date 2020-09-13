version 1.0

task Hailctl {
  command <<<
    hailctl
  >>>
  output {
    File out_stdout = stdout()
  }
}