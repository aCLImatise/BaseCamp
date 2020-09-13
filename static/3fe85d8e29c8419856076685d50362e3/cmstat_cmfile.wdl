version 1.0

task CmstatCmfile {
  input {
    Boolean? options
  }
  command <<<
    cmstat cmfile \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}