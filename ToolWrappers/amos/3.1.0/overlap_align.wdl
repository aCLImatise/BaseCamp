version 1.0

task Overlapalign {
  input {
    Int fast_a_one
    Int fast_a_two
  }
  command <<<
    overlap_align \
      ~{fast_a_one} \
      ~{fast_a_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_one: ""
    fast_a_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}