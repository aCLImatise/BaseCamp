version 1.0

task Bbfakereads.sh {
  input {
    String in
  }
  command <<<
    bbfakereads.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}