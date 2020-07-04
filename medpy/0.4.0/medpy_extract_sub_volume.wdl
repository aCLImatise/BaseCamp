version 1.0

task MedpyExtractSubVolume.pyVolume {
  input {
    Boolean? f
    Boolean? v
    Boolean? d
    String me_dpy_extract_sub_volume_do_tpy
    String image
    String var_output
    String volume
  }
  command <<<
    medpy_extract_sub_volume.py volume \
      ~{me_dpy_extract_sub_volume_do_tpy} \
      ~{image} \
      ~{var_output} \
      ~{volume} \
      ~{true="-f" false="" f} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    f: ""
    v: ""
    d: ""
    me_dpy_extract_sub_volume_do_tpy: ""
    image: ""
    var_output: ""
    volume: ""
  }
}