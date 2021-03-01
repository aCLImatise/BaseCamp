version 1.0

task HtsboxBam2fq {
  input {
    Boolean? append_read_name
    Boolean? output_quality_present
    Boolean? copy_bc_tags
    File? write_singleton_reads
    Int bam_two_fq
    String in_dot_bam
  }
  command <<<
    htsbox bam2fq \
      ~{bam_two_fq} \
      ~{in_dot_bam} \
      ~{if (append_read_name) then "-a" else ""} \
      ~{if (output_quality_present) then "-O" else ""} \
      ~{if (copy_bc_tags) then "-t" else ""} \
      ~{if defined(write_singleton_reads) then ("-s " +  '"' + write_singleton_reads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    append_read_name: "append /1 and /2 to the read name"
    output_quality_present: "output quality in the OQ tag if present"
    copy_bc_tags: "copy RG, BC and QT tags to the FASTQ header line"
    write_singleton_reads: "write singleton reads to FILE [assume single-end]"
    bam_two_fq: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}