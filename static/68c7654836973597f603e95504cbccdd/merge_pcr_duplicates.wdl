version 1.0

task MergePcrDuplicates.pyBclib {
  input {
    String? o
    Boolean? v
    Boolean? d
    String merge_pcr_duplicates_do_tpy
    String alignments
    String bc_lib
  }
  command <<<
    merge_pcr_duplicates.py bclib \
      ~{merge_pcr_duplicates_do_tpy} \
      ~{alignments} \
      ~{bc_lib} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    o: ""
    v: ""
    d: ""
    merge_pcr_duplicates_do_tpy: ""
    alignments: ""
    bc_lib: ""
  }
}