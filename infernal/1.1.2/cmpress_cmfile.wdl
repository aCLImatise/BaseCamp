version 1.0

task CmpressCmfile {
  input {
    Boolean? options
  }
  command <<<
    cmpress cmfile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}