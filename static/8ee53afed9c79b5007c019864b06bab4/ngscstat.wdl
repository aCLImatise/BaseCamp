version 1.0

task Ngscstat {
  input {
    Boolean? int_minimum_alignment
    Boolean? int_maximum_read
    Boolean? int_maximum_insert
    String bam_files
  }
  command <<<
    ngscstat \
      ~{bam_files} \
      ~{if (int_minimum_alignment) then "-q" else ""} \
      ~{if (int_maximum_read) then "-M" else ""} \
      ~{if (int_maximum_insert) then "-L" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0"
  }
  parameter_meta {
    int_minimum_alignment: "INT      minimum alignment quality [30]"
    int_maximum_read: "INT      maximum read depth [500]"
    int_maximum_insert: "INT      maximum insert size [1000]"
    bam_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}