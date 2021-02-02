version 1.0

task MedpyConvertpyOutput {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    Boolean? e
    String me_dpy_convert_do_tpy
    String var_input
    String var_output
  }
  command <<<
    medpy_convert_py output \
      ~{me_dpy_convert_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{if (f) then "-f" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (e) then "-e" else ""}
  >>>
  parameter_meta {
    f: ""
    d: ""
    v: ""
    e: ""
    me_dpy_convert_do_tpy: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}