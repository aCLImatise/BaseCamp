version 1.0

task Explodetree.sh {
  input {
    String in
  }
  command <<<
    explodetree.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}