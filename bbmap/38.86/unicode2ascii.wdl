version 1.0

task Unicode2ascii.sh {
  input {
    String in
  }
  command <<<
    unicode2ascii.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}