version 1.0

task MerylcheckNo {
  input {
    String unknown
  }
  command <<<
    meryl_check No \
      ~{unknown}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meryl:1.2--he1b5a44_0"
  }
  parameter_meta {
    unknown: ""
  }
  output {
    File out_stdout = stdout()
  }
}