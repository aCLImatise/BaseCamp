version 1.0

task Applyvariants.sh {
  input {
    String in
  }
  command <<<
    applyvariants.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}