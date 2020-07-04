version 1.0

task RadicalUtilsPylint.sh {
  input {
    String find
  }
  command <<<
    radical-utils-pylint.sh \
      ~{find}
  >>>
  parameter_meta {
    find: ""
  }
}