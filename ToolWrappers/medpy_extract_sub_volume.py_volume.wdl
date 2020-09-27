version 1.0

task MedpyExtractSubVolumepyVolume {
  input {
    Boolean? d
    Boolean? v
    Boolean? f
    String me_dpy_extract_sub_volume_do_tpy
    String image
    String var_output
    String volume
  }
  command <<<
    medpy_extract_sub_volume_py volume \
      ~{me_dpy_extract_sub_volume_do_tpy} \
      ~{image} \
      ~{var_output} \
      ~{volume} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (f) then "-f" else ""}
  >>>
  parameter_meta {
    d: ""
    v: ""
    f: ""
    me_dpy_extract_sub_volume_do_tpy: ""
    image: ""
    var_output: ""
    volume: ""
  }
  output {
    File out_stdout = stdout()
  }
}