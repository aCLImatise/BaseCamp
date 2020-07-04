version 1.0

task MedpyGradient.pyOutput {
  input {
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_gradient_do_tpy
    String var_input
    String var_output
  }
  command <<<
    medpy_gradient.py output \
      ~{me_dpy_gradient_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    v: ""
    d: ""
    f: ""
    me_dpy_gradient_do_tpy: ""
    var_input: ""
    var_output: ""
  }
}