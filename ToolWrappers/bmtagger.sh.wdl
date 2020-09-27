version 1.0

task Bmtaggersh {
  input {
    Boolean? hv
  }
  command <<<
    bmtagger_sh \
      ~{if (hv) then "-hV" else ""}
  >>>
  parameter_meta {
    hv: ""
  }
  output {
    File out_stdout = stdout()
  }
}