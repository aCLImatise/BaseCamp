version 1.0

task Icecreammaker.sh {
  input {
    String in
  }
  command <<<
    icecreammaker.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}