version 1.0

task Gi2ancestors.sh {
  input {
    String in
  }
  command <<<
    gi2ancestors.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}