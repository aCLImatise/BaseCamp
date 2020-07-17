version 1.0

task MedpyMerge.pyOutput {
  input {
    Boolean? e
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_merge_do_tpy
    String input_one
    String input_two
    String var_output
  }
  command <<<
    medpy_merge.py output \
      ~{me_dpy_merge_do_tpy} \
      ~{input_one} \
      ~{input_two} \
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
    me_dpy_merge_do_tpy: ""
    input_one: ""
    input_two: ""
    var_output: ""
  }
}