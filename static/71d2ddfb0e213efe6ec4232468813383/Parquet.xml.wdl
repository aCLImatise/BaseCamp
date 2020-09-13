version 1.0

task Parquetxml {
  command <<<
    Parquet_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}