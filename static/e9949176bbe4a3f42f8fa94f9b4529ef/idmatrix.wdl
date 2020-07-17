version 1.0

task Idmatrix.sh {
  input {
    String in
  }
  command <<<
    idmatrix.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}