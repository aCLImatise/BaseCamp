version 1.0

task MedpyLabelSuperimposition.pyOutput {
  input {
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_label_superimposition_do_tpy
    String image_one
    String image_two
    String var_output
  }
  command <<<
    medpy_label_superimposition.py output \
      ~{me_dpy_label_superimposition_do_tpy} \
      ~{image_one} \
      ~{image_two} \
      ~{var_output} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    v: ""
    d: ""
    f: ""
    me_dpy_label_superimposition_do_tpy: ""
    image_one: ""
    image_two: ""
    var_output: ""
  }
}