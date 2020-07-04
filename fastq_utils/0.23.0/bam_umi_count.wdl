version 1.0

task BamUmiCount {
  input {
    String? bam
    String? u_counts
    String? min_reads
    String? min_um_is
  }
  command <<<
    bam_umi_count \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(u_counts) then ("--ucounts " +  '"' + u_counts + '"') else ""} \
      ~{if defined(min_reads) then ("--min_reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_um_is) then ("--min_umis " +  '"' + min_um_is + '"') else ""}
  >>>
  parameter_meta {
    bam: ""
    u_counts: ""
    min_reads: ""
    min_um_is: ""
  }
}