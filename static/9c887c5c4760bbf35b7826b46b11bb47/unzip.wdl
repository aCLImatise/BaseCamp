version 1.0

task Unzip.sh {
  input {
    String in
  }
  command <<<
    unzip.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}