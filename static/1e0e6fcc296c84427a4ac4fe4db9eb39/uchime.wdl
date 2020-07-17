version 1.0

task Uchime {
  input {
    Float? x_a
    Float? x_drop_g
    Float? x_drop_nw
    Float? x_drop_u
    Float? x_drop_ug
    String? x_frame
    Boolean? xl_at
    Float? xn
  }
  command <<<
    uchime \
      ~{if defined(x_a) then ("--xa " +  '"' + x_a + '"') else ""} \
      ~{if defined(x_drop_g) then ("--xdrop_g " +  '"' + x_drop_g + '"') else ""} \
      ~{if defined(x_drop_nw) then ("--xdrop_nw " +  '"' + x_drop_nw + '"') else ""} \
      ~{if defined(x_drop_u) then ("--xdrop_u " +  '"' + x_drop_u + '"') else ""} \
      ~{if defined(x_drop_ug) then ("--xdrop_ug " +  '"' + x_drop_ug + '"') else ""} \
      ~{if defined(x_frame) then ("--xframe " +  '"' + x_frame + '"') else ""} \
      ~{true="--xlat" false="" xl_at} \
      ~{if defined(xn) then ("--xn " +  '"' + xn + '"') else ""}
  >>>
  parameter_meta {
    x_a: "help"
    x_drop_g: "help"
    x_drop_nw: "help"
    x_drop_u: "help"
    x_drop_ug: "help"
    x_frame: "help"
    xl_at: "help"
    xn: "help"
  }
}