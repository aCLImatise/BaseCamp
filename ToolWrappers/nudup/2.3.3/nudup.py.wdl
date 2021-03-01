version 1.0

task Nuduppy {
  input {
    Boolean? paired_end
    File? readfq_fastq_file
    File? out
    Int? start
    Int? length
    Directory? directory_reading_writing
    Boolean? old_sam_tools
    Boolean? rmd_up_only
  }
  command <<<
    nudup_py \
      ~{if (paired_end) then "--paired-end" else ""} \
      ~{if defined(readfq_fastq_file) then ("-f " +  '"' + readfq_fastq_file + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(directory_reading_writing) then ("-T " +  '"' + directory_reading_writing + '"') else ""} \
      ~{if (old_sam_tools) then "--old-samtools" else ""} \
      ~{if (rmd_up_only) then "--rmdup-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    paired_end: "use paired end deduping with template. SAM/BAM\\nalignment must contain paired end reads. Degenerate\\nread pairs (alignments for one read of pair) will be\\ndiscarded."
    readfq_fastq_file: "|READ.fq   FASTQ file containing the molecular tag sequence for\\neach read name in the corresponding SAM/BAM file\\n(required only for CASE 1 detailed above)"
    out: "prefix of output file paths for sorted BAMs (default\\nwill create prefix.sorted.markdup.bam,\\nprefix.sorted.dedup.bam, prefix_dup_log.txt)"
    start: "position in index read where molecular tag sequence\\nbegins. This should be a 1-based value that counts in\\nfrom the 3' END of the read. (default = 6)"
    length: "length of molecular tag sequence (default = 6)"
    directory_reading_writing: "directory for reading and writing to temporary files\\nand named pipes (default: /tmp)"
    old_sam_tools: "required for compatibility with samtools sort style in\\nsamtools versions <=0.1.19"
    rmd_up_only: "required for only outputting duplicates removed file"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}