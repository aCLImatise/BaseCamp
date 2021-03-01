version 1.0

task Bedextractfloat128 {
  input {
    Int zero
    Int one
    Int two
    Int three
  }
  command <<<
    bedextract_float128 \
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