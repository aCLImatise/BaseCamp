version 1.0

task MedpyMergepyInput2 {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    Boolean? e
    String me_dpy_merge_do_tpy
    Int input_one
    Int input_two
    String var_output
  }
  command <<<
    medpy_merge_py input2 \
      ~{me_dpy_merge_do_tpy} \
      ~{input_one} \
      ~{input_two} \
      ~{var_output} \
      ~{if (f) then "-f" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (e) then "-e" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    d: ""
    v: ""
    e: ""
    me_dpy_merge_do_tpy: ""
    input_one: ""
    input_two: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}