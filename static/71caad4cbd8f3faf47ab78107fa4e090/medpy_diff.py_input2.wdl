version 1.0

task MedpyDiffpyInput2 {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    String me_dpy_diff_do_tpy
    Int input_one
    Int input_two
  }
  command <<<
    medpy_diff_py input2 \
      ~{me_dpy_diff_do_tpy} \
      ~{input_one} \
      ~{input_two} \
      ~{if (f) then "-f" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    d: ""
    v: ""
    me_dpy_diff_do_tpy: ""
    input_one: ""
    input_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}