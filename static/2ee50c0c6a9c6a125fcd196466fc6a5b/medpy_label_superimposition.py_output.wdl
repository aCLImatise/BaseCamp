version 1.0

task MedpyLabelSuperimpositionpyOutput {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    String me_dpy_label_superimposition_do_tpy
    Int image_one
    Int image_two
    String var_output
  }
  command <<<
    medpy_label_superimposition_py output \
      ~{me_dpy_label_superimposition_do_tpy} \
      ~{image_one} \
      ~{image_two} \
      ~{var_output} \
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
    me_dpy_label_superimposition_do_tpy: ""
    image_one: ""
    image_two: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}