version 1.0

task PyporeBatchCsvpy {
  command <<<
    pypore_batch_csv_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}