version 1.0

task Bamgroupreadspy {
  input {
    File? input_bam_file
    String? read_group
    Boolean? reset_dups
    Boolean? fix_flags
    Boolean? input_sam_format
    Boolean? output_bam_format
    Boolean? output_uncompressed_bam
    Boolean? split_reads_flag
  }
  command <<<
    bamgroupreads_py \
      ~{if defined(input_bam_file) then ("--input " +  '"' + input_bam_file + '"') else ""} \
      ~{if defined(read_group) then ("--readgroup " +  '"' + read_group + '"') else ""} \
      ~{if (reset_dups) then "--reset_dups" else ""} \
      ~{if (fix_flags) then "--fix_flags" else ""} \
      ~{if (input_sam_format) then "-S" else ""} \
      ~{if (output_bam_format) then "-b" else ""} \
      ~{if (output_uncompressed_bam) then "-u" else ""} \
      ~{if (split_reads_flag) then "-M" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamkit:16.07.26--py_0"
  }
  parameter_meta {
    input_bam_file: "Input BAM file"
    read_group: "Read group(s) to extract (comma separated)"
    reset_dups: "Reset duplicate flags"
    fix_flags: "Fix mate flags for secondary reads"
    input_sam_format: "Input is SAM format"
    output_bam_format: "Output BAM format"
    output_uncompressed_bam: "Output uncompressed BAM format (implies -b)"
    split_reads_flag: "split reads are flagged as secondary, not supplementary. For compatibility with legacy BWA-MEM \\\"-M\\\" flag"
  }
  output {
    File out_stdout = stdout()
  }
}