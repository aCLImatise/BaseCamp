version 1.0

task Fuse.sh {
  input {
    String in
  }
  command <<<
    fuse.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}