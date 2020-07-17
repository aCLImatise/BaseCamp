version 1.0

task Gradesam.sh {
  input {
    String in
  }
  command <<<
    gradesam.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}