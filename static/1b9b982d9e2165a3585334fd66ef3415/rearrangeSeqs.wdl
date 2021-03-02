version 1.0

task RearrangeSeqs {
  input {
    String good_dot
  }
  command <<<
    rearrangeSeqs \
      ~{good_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    good_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}