version 1.0

task LibSQLiteInteropso {
  command <<<
    libSQLite_Interop_so
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}