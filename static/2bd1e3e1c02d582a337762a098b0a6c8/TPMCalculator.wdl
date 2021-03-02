version 1.0

task TPMCalculator {
  input {
    Boolean? print_info
    Boolean? version
    Boolean? gtf_file
    Boolean? directory_bam_files
    Boolean? bam_file
    Boolean? gene_key_use
    Boolean? transcript_key_use
    Boolean? smaller_size_allowed
    Boolean? use_properly_paired
    Boolean? minimum_mapq_value
    Boolean? minimum_overlap_reads
    Boolean? extended_output_include
    Boolean? print_features_read
  }
  command <<<
    TPMCalculator \
      ~{if (print_info) then "-v" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (gtf_file) then "-g" else ""} \
      ~{if (directory_bam_files) then "-d" else ""} \
      ~{if (bam_file) then "-b" else ""} \
      ~{if (gene_key_use) then "-k" else ""} \
      ~{if (transcript_key_use) then "-t" else ""} \
      ~{if (smaller_size_allowed) then "-c" else ""} \
      ~{if (use_properly_paired) then "-p" else ""} \
      ~{if (minimum_mapq_value) then "-q" else ""} \
      ~{if (minimum_overlap_reads) then "-o" else ""} \
      ~{if (extended_output_include) then "-e" else ""} \
      ~{if (print_features_read) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_info: "Print info"
    version: "Print version"
    gtf_file: "GTF file"
    directory_bam_files: "Directory with the BAM files"
    bam_file: "BAM file"
    gene_key_use: "Gene key to use from GTF file. Default: gene_id"
    transcript_key_use: "Transcript key to use from GTF file. Default: transcript_id"
    smaller_size_allowed: "Smaller size allowed for an intron created for genes. Default: 16. We recommend to use the reads length"
    use_properly_paired: "Use only properly paired reads. Default: No. Recommended for paired-end reads."
    minimum_mapq_value: "Minimum MAPQ value to filter out reads. Default: 0. This value depends on the aligner MAPQ value."
    minimum_overlap_reads: "Minimum overlap between a reads and a feature. Default: 8."
    extended_output_include: "Extended output. This will include transcript level TPM values. Default: No."
    print_features_read: "Print out all features with read counts equal to zero. Default: No."
  }
  output {
    File out_stdout = stdout()
  }
}