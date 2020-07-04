version 1.0

task Icecreamfinder.sh {
  input {
    String in
  }
  command <<<
    icecreamfinder.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}