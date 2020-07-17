version 1.0

task CycleFold {
  input {
    String sequence
  }
  command <<<
    CycleFold \
      ~{sequence}
  >>>
  parameter_meta {
    sequence: ""
  }
}