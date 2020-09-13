version 1.0

task CmpressCmfile {
  input {
    Boolean? options
  }
  command <<<
    cmpress cmfile \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}