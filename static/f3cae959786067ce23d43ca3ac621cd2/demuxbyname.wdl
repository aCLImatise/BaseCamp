version 1.0

task Demuxbyname.sh {
  input {
    String in
  }
  command <<<
    demuxbyname.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}