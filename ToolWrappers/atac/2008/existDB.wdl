version 1.0

task ExistDB {
  command <<<
    existDB
  >>>
  output {
    File out_stdout = stdout()
  }
}