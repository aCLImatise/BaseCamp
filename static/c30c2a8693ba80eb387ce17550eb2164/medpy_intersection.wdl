version 1.0

task MedpyIntersection.pyOutput2 {
  input {
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_intersection_do_tpy
    String input_one
    String input_two
    String output_one
    String output_two
  }
  command <<<
    medpy_intersection.py output2 \
      ~{me_dpy_intersection_do_tpy} \
      ~{input_one} \
      ~{input_two} \
      ~{output_one} \
      ~{output_two} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    v: ""
    d: ""
    f: ""
    me_dpy_intersection_do_tpy: ""
    input_one: ""
    input_two: ""
    output_one: ""
    output_two: ""
  }
}