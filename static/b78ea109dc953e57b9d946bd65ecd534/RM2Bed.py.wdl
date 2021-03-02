version 1.0

task RM2Bedpy {
  command <<<
    RM2Bed_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/repeatmasker:4.1.1--pl526_1"
  }
  output {
    File out_stdout = stdout()
  }
}