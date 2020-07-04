version 1.0

task Reformatpb.sh {
  input {
    String in
  }
  command <<<
    reformatpb.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}