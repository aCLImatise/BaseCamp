version 1.0

task Muxbyname.sh {
  input {
    String in
  }
  command <<<
    muxbyname.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}