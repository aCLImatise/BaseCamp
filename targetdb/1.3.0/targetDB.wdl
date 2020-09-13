version 1.0

task TargetDB {
  command <<<
    targetDB
  >>>
  output {
    File out_stdout = stdout()
  }
}