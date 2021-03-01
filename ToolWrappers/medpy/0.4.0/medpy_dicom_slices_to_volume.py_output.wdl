version 1.0

task MedpyDicomSlicesToVolumepyOutput {
  input {
    Boolean? f
    Boolean? d
    Boolean? v
    Boolean? s
    String me_dpy_dicom_slices_to_volume_do_tpy
    String var_input
    String var_output
  }
  command <<<
    medpy_dicom_slices_to_volume_py output \
      ~{me_dpy_dicom_slices_to_volume_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{if (f) then "-f" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if (s) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    d: ""
    v: ""
    s: ""
    me_dpy_dicom_slices_to_volume_do_tpy: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}