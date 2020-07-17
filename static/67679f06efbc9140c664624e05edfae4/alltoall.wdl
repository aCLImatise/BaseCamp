version 1.0

task Alltoall.sh {
  input {
    String in
  }
  command <<<
    alltoall.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}