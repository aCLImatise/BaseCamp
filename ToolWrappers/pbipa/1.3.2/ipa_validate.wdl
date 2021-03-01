version 1.0

task IpaValidate {
  input {
    String ipa
  }
  command <<<
    ipa validate \
      ~{ipa}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    ipa: ""
  }
  output {
    File out_stdout = stdout()
  }
}