version 1.0

task Gi2taxid.sh {
  input {
    String in
  }
  command <<<
    gi2taxid.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}