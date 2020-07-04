version 1.0

task CmconvertCmfile {
  input {
    Boolean? options
  }
  command <<<
    cmconvert cmfile \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
  }
}