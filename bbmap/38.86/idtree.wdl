version 1.0

task Idtree.sh {
  input {
    String in
  }
  command <<<
    idtree.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}