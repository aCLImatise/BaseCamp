version 1.0

task CmstatCmfile {
  input {
    Boolean? options
  }
  command <<<
    cmstat cmfile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}