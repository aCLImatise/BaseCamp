version 1.0

task MedpyStackSubVolumes.pyImages {
  input {
    Boolean? f
    Boolean? v
    Boolean? d
    Boolean? z
    Boolean? r
    String me_dpy_stack_sub_volumes_do_tpy
  }
  command <<<
    medpy_stack_sub_volumes.py images \
      ~{me_dpy_stack_sub_volumes_do_tpy} \
      ~{true="-f" false="" f} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-z" false="" z} \
      ~{true="-r" false="" r}
  >>>
  parameter_meta {
    f: ""
    v: ""
    d: ""
    z: ""
    r: ""
    me_dpy_stack_sub_volumes_do_tpy: ""
  }
}