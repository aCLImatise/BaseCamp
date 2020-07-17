version 1.0

task Subsketch.sh {
  input {
    String in
  }
  command <<<
    subsketch.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}