version 1.0

task ASampleMt.sh {
  input {
    String in
  }
  command <<<
    a_sample_mt.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}