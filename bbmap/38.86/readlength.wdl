version 1.0

task Readlength.sh {
  input {
    String in
  }
  command <<<
    readlength.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}