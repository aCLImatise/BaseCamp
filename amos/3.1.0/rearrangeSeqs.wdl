version 1.0

task RearrangeSeqs {
  input {
    String good_dot
  }
  command <<<
    rearrangeSeqs \
      ~{good_dot}
  >>>
  parameter_meta {
    good_dot: ""
  }
}