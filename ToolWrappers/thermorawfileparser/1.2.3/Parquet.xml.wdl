version 1.0

task Parquetxml {
  command <<<
    Parquet_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}