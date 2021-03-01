version 1.0

task Bedextract {
  input {
    Int zero
    Int one
    Int two
    Int three
  }
  command <<<
    bedextract \
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