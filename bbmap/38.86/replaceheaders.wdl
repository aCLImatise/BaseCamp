version 1.0

task Replaceheaders.sh {
  input {
    String in
  }
  command <<<
    replaceheaders.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}