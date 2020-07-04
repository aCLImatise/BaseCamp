version 1.0

task Comparessu.sh {
  input {
    String in
  }
  command <<<
    comparessu.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}