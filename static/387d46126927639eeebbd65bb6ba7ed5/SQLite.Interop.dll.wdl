version 1.0

task SQLiteInteropdll {
  command <<<
    SQLite_Interop_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}