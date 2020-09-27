version 1.0

task MedpySetPixelSpacingpySpacing {
  input {
    Boolean? d
    Boolean? v
    String me_dpy_set_pixel_spacing_do_tpy
    String image
    String? spacing
  }
  command <<<
    medpy_set_pixel_spacing_py spacing \
      ~{me_dpy_set_pixel_spacing_do_tpy} \
      ~{image} \
      ~{spacing} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    d: ""
    v: ""
    me_dpy_set_pixel_spacing_do_tpy: ""
    image: ""
    spacing: ""
  }
  output {
    File out_stdout = stdout()
  }
}