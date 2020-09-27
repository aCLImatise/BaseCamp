version 1.0

task Parquetdll {
  command <<<
    Parquet_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}