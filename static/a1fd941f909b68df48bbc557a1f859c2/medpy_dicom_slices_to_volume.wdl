version 1.0

task MedpyDicomSlicesToVolume.pyOutput {
  input {
    Boolean? s
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_dicom_slices_to_volume_do_tpy
    String var_input
    String var_output
  }
  command <<<
    medpy_dicom_slices_to_volume.py output \
      ~{me_dpy_dicom_slices_to_volume_do_tpy} \
      ~{var_input} \
      ~{var_output} \
      ~{true="-s" false="" s} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    s: ""
    v: ""
    d: ""
    f: ""
    me_dpy_dicom_slices_to_volume_do_tpy: ""
    var_input: ""
    var_output: ""
  }
}