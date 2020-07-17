version 1.0

task MedpyConvert.pyOutput {
  input {
    Boolean? e
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_convert_do_tpy
    String var_input
    String var_output
  }
  command <<<
    medpy_convert.py output \
      ~{me_dpy_convert_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{true="-e" false="" e} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    e: ""
    v: ""
    d: ""
    f: ""
    me_dpy_convert_do_tpy: ""
    var_input: ""
    var_output: ""
  }
}