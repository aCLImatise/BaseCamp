version 1.0

task IpaPurgeDupsNgscstat {
  input {
    Boolean? int_minimum_alignment
    Boolean? int_maximum_read
    Boolean? int_maximum_insert
    String ngs_cst_at
    String bam_files
  }
  command <<<
    ipa_purge_dups_ngscstat \
      ~{ngs_cst_at} \
      ~{bam_files} \
      ~{if (int_minimum_alignment) then "-q" else ""} \
      ~{if (int_maximum_read) then "-M" else ""} \
      ~{if (int_maximum_insert) then "-L" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    int_minimum_alignment: "INT      minimum alignment quality [30]"
    int_maximum_read: "INT      maximum read depth [500]"
    int_maximum_insert: "INT      maximum insert size [1000]"
    ngs_cst_at: ""
    bam_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}