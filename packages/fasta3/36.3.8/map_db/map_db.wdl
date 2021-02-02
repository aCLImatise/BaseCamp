version 1.0

task MapDb {
  command <<<
    map_db
  >>>
  output {
    File out_stdout = stdout()
  }
}