version 1.0

task Comparevcf.sh {
  input {
    String in
  }
  command <<<
    comparevcf.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}