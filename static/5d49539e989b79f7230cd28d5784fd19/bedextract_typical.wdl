version 1.0

task Bedextracttypical {
  input {
    Int zero
    Int one
    Int two
    Int three
  }
  command <<<
    bedextract_typical \
      ~{zero} \
      ~{one} \
      ~{two} \
      ~{three}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    zero: ""
    one: ""
    two: ""
    three: ""
  }
  output {
    File out_stdout = stdout()
  }
}