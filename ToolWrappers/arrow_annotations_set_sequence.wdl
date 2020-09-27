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
  parameter_meta {
    organism: ""
    sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}