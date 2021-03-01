version 1.0

task Barcodeprocesserpy {
  command <<<
    barcodeprocesser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}