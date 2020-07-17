version 1.0

task Reorder {
  input {
    Boolean? b
  }
  command <<<
    reorder \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    b: ""
  }
}