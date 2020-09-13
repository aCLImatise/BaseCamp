version 1.0

task MergePcrDuplicatespyBclib {
  input {
    Boolean? d
    Boolean? v
    String? o
    String merge_pcr_duplicates_do_tpy
    String alignments
    String bc_lib
  }
  command <<<
    merge_pcr_duplicates_py bclib \
      ~{merge_pcr_duplicates_do_tpy} \
      ~{alignments} \
      ~{bc_lib} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    v: ""
    o: ""
    merge_pcr_duplicates_do_tpy: ""
    alignments: ""
    bc_lib: ""
  }
  output {
    File out_stdout = stdout()
  }
}