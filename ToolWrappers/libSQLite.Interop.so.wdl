version 1.0

task LibSQLiteInteropso {
  command <<<
    libSQLite_Interop_so
  >>>
  output {
    File out_stdout = stdout()
  }
}