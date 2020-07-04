version 1.0

task Diskbench.sh {
  input {
    File path
  }
  command <<<
    diskbench.sh \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}