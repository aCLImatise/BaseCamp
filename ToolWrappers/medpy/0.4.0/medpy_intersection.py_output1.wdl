version 1.0

task MedpyIntersectionpyOutput1 {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    String me_dpy_intersection_do_tpy
    Int input_one
    Int input_two
    Int output_one
    Int output_two
  }
  command <<<
    medpy_intersection_py output1 \
      ~{me_dpy_intersection_do_tpy} \
      ~{input_one} \
      ~{input_two} \
      ~{output_one} \
      ~{output_two} \
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
    me_dpy_intersection_do_tpy: ""
    input_one: ""
    input_two: ""
    output_one: ""
    output_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}