version 1.0

task Bbnorm.sh {
  input {
    String in
  }
  command <<<
    bbnorm.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}