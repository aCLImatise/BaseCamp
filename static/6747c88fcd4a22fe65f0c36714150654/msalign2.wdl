version 1.0

task Msalign2 {
  input {
    Boolean? one
    Boolean? two
    Boolean? e
    String ms_align
    String lc_ms_dataset_one_filename
    String lc_ms_dataset_two_filename
  }
  command <<<
    msalign2 \
      ~{ms_align} \
      ~{lc_ms_dataset_one_filename} \
      ~{lc_ms_dataset_two_filename} \
      ~{true="-1" false="" one} \
      ~{true="-2" false="" two} \
      ~{true="-e" false="" e}
  >>>
  parameter_meta {
    one: ""
    two: ""
    e: ""
    ms_align: ""
    lc_ms_dataset_one_filename: ""
    lc_ms_dataset_two_filename: ""
  }
}