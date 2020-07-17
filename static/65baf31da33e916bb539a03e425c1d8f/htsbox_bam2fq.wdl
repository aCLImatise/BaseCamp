version 1.0

task HtsboxBam2fq {
  input {
    Boolean? append_read_name
    Boolean? output_quality_present
    Boolean? copy_rg_bc
    File? write_singleton_reads
    String bam_two_fq
    String in_dot_bam
  }
  command <<<
    htsbox bam2fq \
      ~{bam_two_fq} \
      ~{in_dot_bam} \
      ~{true="-a" false="" append_read_name} \
      ~{true="-O" false="" output_quality_present} \
      ~{true="-t" false="" copy_rg_bc} \
      ~{if defined(write_singleton_reads) then ("-s " +  '"' + write_singleton_reads + '"') else ""}
  >>>
  parameter_meta {
    append_read_name: "append /1 and /2 to the read name"
    output_quality_present: "output quality in the OQ tag if present"
    copy_rg_bc: "copy RG, BC and QT tags to the FASTQ header line"
    write_singleton_reads: "write singleton reads to FILE [assume single-end]"
    bam_two_fq: ""
    in_dot_bam: ""
  }
}