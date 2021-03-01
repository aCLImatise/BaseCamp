version 1.0

task Parquetdll {
  command <<<
    Parquet_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}