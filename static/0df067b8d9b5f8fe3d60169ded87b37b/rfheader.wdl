version 1.0

task Rfheader {
  input {
    String refine
    String the
    String header
  }
  command <<<
    rfheader \
      ~{refine} \
      ~{the} \
      ~{header}
  >>>
  parameter_meta {
    refine: ""
    the: ""
    header: ""
  }
  output {
    File out_stdout = stdout()
  }
}