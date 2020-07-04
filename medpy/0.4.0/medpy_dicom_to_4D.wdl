version 1.0

task MedpyDicomTo4D.pyOffset {
  input {
    Boolean? v
    Boolean? d
    Boolean? f
    String me_dpy_dicom_to_four_ddot_py
    String var_input
    String var_output
    String dimension
    String offset
  }
  command <<<
    medpy_dicom_to_4D.py offset \
      ~{me_dpy_dicom_to_four_ddot_py} \
      ~{var_input} \
      ~{var_output} \
      ~{dimension} \
      ~{offset} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    v: ""
    d: ""
    f: ""
    me_dpy_dicom_to_four_ddot_py: ""
    var_input: ""
    var_output: ""
    dimension: ""
    offset: ""
  }
}