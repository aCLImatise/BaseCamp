version 1.0

task MedpyGradientpyOutput {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    String me_dpy_gradient_do_tpy
    String var_input
    String var_output
  }
  command <<<
    medpy_gradient_py output \
      ~{me_dpy_gradient_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{if (f) then "-f" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    f: ""
    d: ""
    v: ""
    me_dpy_gradient_do_tpy: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}