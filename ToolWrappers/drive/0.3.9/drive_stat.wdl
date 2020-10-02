version 1.0

task DriveStat {
  command <<<
    drive stat
  >>>
  output {
    File out_stdout = stdout()
  }
}