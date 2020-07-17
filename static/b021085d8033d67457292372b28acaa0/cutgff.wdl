version 1.0

task Cutgff.sh {
  input {
    String in
  }
  command <<<
    cutgff.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}