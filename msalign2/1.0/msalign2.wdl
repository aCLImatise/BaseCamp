version 1.0

task Msalign2 {
  input {
    Boolean? e
    Boolean? two
    Boolean? one
    String ms_align
    File lc_ms_dataset_one_filename
    File lc_ms_dataset_two_filename
  }
  command <<<
    msalign2 \
      ~{ms_align} \
      ~{lc_ms_dataset_one_filename} \
      ~{lc_ms_dataset_two_filename} \
      ~{if (e) then "-e" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (one) then "-1" else ""}
  >>>
  parameter_meta {
    e: ""
    two: ""
    one: ""
    ms_align: ""
    lc_ms_dataset_one_filename: ""
    lc_ms_dataset_two_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}