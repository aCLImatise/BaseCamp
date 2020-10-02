version 1.0

task Ntthal {
  input {
    String oligo
  }
  command <<<
    ntthal \
      ~{oligo}
  >>>
  parameter_meta {
    oligo: ""
  }
  output {
    File out_stdout = stdout()
  }
}