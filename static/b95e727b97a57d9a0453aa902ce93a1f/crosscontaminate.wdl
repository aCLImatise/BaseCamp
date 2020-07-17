version 1.0

task Crosscontaminate.sh {
  input {
    String in
  }
  command <<<
    crosscontaminate.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}