version 1.0

task StringmeupClassifications {
  input {
    String confidence_recal
  }
  command <<<
    stringmeup classifications \
      ~{confidence_recal}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    confidence_recal: ""
  }
  output {
    File out_stdout = stdout()
  }
}