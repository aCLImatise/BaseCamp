version 1.0

task StringmeupConfidence {
  input {
    String confidence_recal
  }
  command <<<
    stringmeup confidence \
      ~{confidence_recal}
  >>>
  parameter_meta {
    confidence_recal: ""
  }
  output {
    File out_stdout = stdout()
  }
}