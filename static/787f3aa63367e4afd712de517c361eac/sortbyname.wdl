version 1.0

task Sortbyname.sh {
  input {
    String in
  }
  command <<<
    sortbyname.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}