version 1.0

task PyporeBatchCsvpy {
  command <<<
    pypore_batch_csv_py
  >>>
  output {
    File out_stdout = stdout()
  }
}