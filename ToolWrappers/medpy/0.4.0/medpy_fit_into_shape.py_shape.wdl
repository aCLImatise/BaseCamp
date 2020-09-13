version 1.0

task MedpyFitIntoShapepyShape {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    String me_dpy_fit_into_shape_do_tpy
    String var_input
    String var_output
    String shape
  }
  command <<<
    medpy_fit_into_shape_py shape \
      ~{me_dpy_fit_into_shape_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{shape} \
      ~{if (f) then "-f" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    f: ""
    d: ""
    v: ""
    me_dpy_fit_into_shape_do_tpy: ""
    var_input: ""
    var_output: ""
    shape: ""
  }
  output {
    File out_stdout = stdout()
  }
}