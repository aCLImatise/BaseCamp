version 1.0

task SystemDataSQLitedll {
  command <<<
    System_Data_SQLite_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}