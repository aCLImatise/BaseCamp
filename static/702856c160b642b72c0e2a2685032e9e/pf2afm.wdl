version 1.0

task Pf2afm {
  input {
    Boolean? d_no_display
    String gs
  }
  command <<<
    pf2afm \
      ~{gs} \
      ~{true="-dNODISPLAY" false="" d_no_display}
  >>>
  parameter_meta {
    d_no_display: ""
    gs: ""
  }
}