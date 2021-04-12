version 1.0

task IsPredictpy {
  command <<<
    isPredict_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/isescan:1.7.2.3--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}