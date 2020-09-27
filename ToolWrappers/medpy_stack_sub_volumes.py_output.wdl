version 1.0

task MedpyStackSubVolumespyOutput {
  input {
    Boolean? r
    Boolean? z
    Boolean? d
    Boolean? v
    Boolean? f
    String me_dpy_stack_sub_volumes_do_tpy
  }
  command <<<
    medpy_stack_sub_volumes_py output \
      ~{me_dpy_stack_sub_volumes_do_tpy} \
      ~{if (r) then "-r" else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (f) then "-f" else ""}
  >>>
  parameter_meta {
    r: ""
    z: ""
    d: ""
    v: ""
    f: ""
    me_dpy_stack_sub_volumes_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}