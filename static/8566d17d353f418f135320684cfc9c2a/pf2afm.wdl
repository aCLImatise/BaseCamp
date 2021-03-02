version 1.0

task Pf2afm {
  input {
    Boolean? d_no_display
    String gs
  }
  command <<<
    pf2afm \
      ~{gs} \
      ~{if (d_no_display) then "-dNODISPLAY" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    d_no_display: ""
    gs: ""
  }
  output {
    File out_stdout = stdout()
  }
}