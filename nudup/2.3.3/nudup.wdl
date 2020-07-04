version 1.0

task Nudup.py {
  input {
    Boolean? paired_end
    String? readfq_fastq_file
    String? out
    String? start
    Int? length
    String? directory_named_tmp
    Boolean? old_sam_tools
    Boolean? rmd_up_only
  }
  command <<<
    nudup.py \
      ~{true="--paired-end" false="" paired_end} \
      ~{if defined(readfq_fastq_file) then ("-f " +  '"' + readfq_fastq_file + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(directory_named_tmp) then ("-T " +  '"' + directory_named_tmp + '"') else ""} \
      ~{true="--old-samtools" false="" old_sam_tools} \
      ~{true="--rmdup-only" false="" rmd_up_only}
  >>>
  parameter_meta {
    paired_end: "use paired end deduping with template. SAM/BAM alignment must contain paired end reads. Degenerate read pairs (alignments for one read of pair) will be discarded."
    readfq_fastq_file: "|READ.fq   FASTQ file containing the molecular tag sequence for each read name in the corresponding SAM/BAM file (required only for CASE 1 detailed above)"
    out: "prefix of output file paths for sorted BAMs (default will create prefix.sorted.markdup.bam, prefix.sorted.dedup.bam, prefix_dup_log.txt)"
    start: "position in index read where molecular tag sequence begins. This should be a 1-based value that counts in from the 3' END of the read. (default = 6)"
    length: "length of molecular tag sequence (default = 6)"
    directory_named_tmp: "directory for reading and writing to temporary files and named pipes (default: /tmp)"
    old_sam_tools: "required for compatibility with samtools sort style in samtools versions <=0.1.19"
    rmd_up_only: "required for only outputting duplicates removed file"
  }
}