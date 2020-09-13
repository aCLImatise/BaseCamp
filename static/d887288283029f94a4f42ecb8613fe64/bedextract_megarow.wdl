version 1.0

task Bedextractmegarow {
  input {
    Int zero
    Int one
    Int two
    Int three
  }
  command <<<
    bedextract_megarow \
      ~{zero} \
      ~{one} \
      ~{two} \
      ~{three}
  >>>
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