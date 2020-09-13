version 1.0

task SystemDataSQLitedll {
  command <<<
    System_Data_SQLite_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}