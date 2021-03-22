version 1.0

task GNUVIDTrainingpy {
  command <<<
    GNUVID_Training_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}