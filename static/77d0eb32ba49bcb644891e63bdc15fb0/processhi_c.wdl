version 1.0

task ProcesshiC.sh {
  input {
    String in
  }
  command <<<
    processhi-c.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}