version 1.0

task MedpyFitIntoShape.pyShape {
  input {
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_fit_into_shape_do_tpy
    String var_input
    String var_output
    String shape
  }
  command <<<
    medpy_fit_into_shape.py shape \
      ~{me_dpy_fit_into_shape_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{shape} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    v: ""
    d: ""
    f: ""
    me_dpy_fit_into_shape_do_tpy: ""
    var_input: ""
    var_output: ""
    shape: ""
  }
}