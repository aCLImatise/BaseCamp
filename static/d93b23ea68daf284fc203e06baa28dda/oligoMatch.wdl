version 1.0

task OligoMatch {
  input {
    String oligos
    String sequence
  }
  command <<<
    oligoMatch \
      ~{oligos} \
      ~{sequence}
  >>>
  parameter_meta {
    oligos: ""
    sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}