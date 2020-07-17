version 1.0

task Countgc.sh {
  input {
    String in
  }
  command <<<
    countgc.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}