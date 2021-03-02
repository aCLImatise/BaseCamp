version 1.0

task MedpyExtractMinMaxpyImages {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    String me_dpy_extract_min_max_do_tpy
    String csv
    String? images
  }
  command <<<
    medpy_extract_min_max_py images \
      ~{me_dpy_extract_min_max_do_tpy} \
      ~{csv} \
      ~{images} \
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
    me_dpy_extract_min_max_do_tpy: ""
    csv: ""
    images: ""
  }
  output {
    File out_stdout = stdout()
  }
}