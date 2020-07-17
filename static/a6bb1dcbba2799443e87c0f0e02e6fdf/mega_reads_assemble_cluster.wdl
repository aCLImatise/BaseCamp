version 1.0

task MegaReadsAssembleCluster.sh {
  input {
    File? m
    String? p
    File? a
    String mega_reads_assemble_dots_h
  }
  command <<<
    mega_reads_assemble_cluster.sh \
      ~{mega_reads_assemble_dots_h} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    p: ""
    a: ""
    mega_reads_assemble_dots_h: ""
  }
}