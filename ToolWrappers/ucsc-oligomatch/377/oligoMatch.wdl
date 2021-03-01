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
  runtime {
    docker: "None"
  }
  parameter_meta {
    oligos: ""
    sequence: ""
  }
  output {
    File out_stdout = stdout()
  }
}