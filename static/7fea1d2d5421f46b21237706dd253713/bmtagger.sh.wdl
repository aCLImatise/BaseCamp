version 1.0

task Bmtaggersh {
  input {
    Boolean? hv
  }
  command <<<
    bmtagger_sh \
      ~{if (hv) then "-hV" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hv: ""
  }
  output {
    File out_stdout = stdout()
  }
}