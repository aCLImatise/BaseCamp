version 1.0

task RecordProcessingpy {
  command <<<
    record_processing_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/rodeo:2.3.3--0"
  }
  output {
    File out_stdout = stdout()
  }
}