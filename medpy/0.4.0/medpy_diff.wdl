version 1.0

task MedpyDiff.pyInput2 {
  input {
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_diff_do_tpy
    String input_one
    String input_two
  }
  command <<<
    medpy_diff.py input2 \
      ~{me_dpy_diff_do_tpy} \
      ~{input_one} \
      ~{input_two} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    v: ""
    d: ""
    f: ""
    me_dpy_diff_do_tpy: ""
    input_one: ""
    input_two: ""
  }
}