version 1.0

task SQLiteInteropdll {
  command <<<
    SQLite_Interop_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}