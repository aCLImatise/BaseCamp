version 1.0

task DBdust {
  input {
    Boolean? b
  }
  command <<<
    DBdust \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    b: ""
  }
}