version 1.0

task MedpyResamplepySpacing {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    String? o
    String me_dpy_resample_do_tpy
    String var_input
    String var_output
    String spacing
  }
  command <<<
    medpy_resample_py spacing \
      ~{me_dpy_resample_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{spacing} \
      ~{if (f) then "-f" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    d: ""
    v: ""
    o: ""
    me_dpy_resample_do_tpy: ""
    var_input: ""
    var_output: ""
    spacing: ""
  }
  output {
    File out_stdout = stdout()
  }
}