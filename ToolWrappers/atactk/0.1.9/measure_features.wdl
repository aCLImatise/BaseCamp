version 1.0

task MeasureFeatures {
  command <<<
    measure_features
  >>>
  runtime {
    docker: "quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}