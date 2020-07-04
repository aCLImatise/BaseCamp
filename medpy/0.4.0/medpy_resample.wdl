version 1.0

task MedpyResample.pySpacing {
  input {
    String? o
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_resample_do_tpy
    String var_input
    String var_output
    String spacing
  }
  command <<<
    medpy_resample.py spacing \
      ~{me_dpy_resample_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{spacing} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    o: ""
    v: ""
    d: ""
    f: ""
    me_dpy_resample_do_tpy: ""
    var_input: ""
    var_output: ""
    spacing: ""
  }
}