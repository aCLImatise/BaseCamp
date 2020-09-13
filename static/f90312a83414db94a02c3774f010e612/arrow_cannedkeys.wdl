version 1.0

task ArrowCannedkeys {
  command <<<
    arrow cannedkeys
  >>>
  output {
    File out_stdout = stdout()
  }
}