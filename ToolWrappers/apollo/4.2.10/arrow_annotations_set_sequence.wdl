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
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    organism: ""
    sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}