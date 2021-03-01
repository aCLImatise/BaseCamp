version 1.0

task MapDb {
  command <<<
    map_db
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}