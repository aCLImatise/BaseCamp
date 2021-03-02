version 1.0

task ArrowAnnotationsSetSequence {
  input {
    String organism
    String sequence
  }
  command <<<
    arrow annotations set_sequence \
      ~{organism} \
      ~{sequence}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: ""
    sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}