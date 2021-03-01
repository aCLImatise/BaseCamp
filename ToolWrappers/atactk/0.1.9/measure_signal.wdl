version 1.0

task MeasureSignal {
  input {
    File? exclude_flags
    File? include_flags
    Int? cut_point_offset
    Int? parallel
    Int? quality
    Int? region_extension
    File? sample
    Boolean? verbose
    File bam_file_of_aligned_reads
    String reads_dot
  }
  command <<<
    measure_signal \
      ~{bam_file_of_aligned_reads} \
      ~{reads_dot} \
      ~{if defined(exclude_flags) then ("--exclude-flags " +  '"' + exclude_flags + '"') else ""} \
      ~{if defined(include_flags) then ("--include-flags " +  '"' + include_flags + '"') else ""} \
      ~{if defined(cut_point_offset) then ("--cut-point-offset " +  '"' + cut_point_offset + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(region_extension) then ("--region-extension " +  '"' + region_extension + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0"
  }
  parameter_meta {
    exclude_flags: "A SAM flag used to exclude alignments from the BAM\\nfile. More than one may be specified. Alignments\\nmatching any exclude flag will not be counted. The\\ndefault is to exclude all unmapped reads/mates by\\nfiltering out any alignments with SAM flags 4 or 8\\nset."
    include_flags: "A SAM flag that determines which alignments from the\\nBAM file will be included in the counts. More than one\\nmay be specified. Any alignment matching any include\\nflag will be counted. The default is to include\\nproperly paired and mapped reads by filtering for SAM\\nflags 83, 99, 147, or 163."
    cut_point_offset: "The position of cut points relative to the beginning\\nof a read and in the direction toward the read end, as\\na number of bases (default: 4)."
    parallel: "The number of parallel scoring processes to use\\n(default: 1)."
    quality: "The minimum mapping quality required for a read to be\\ncounted (default: 30)."
    region_extension: "The number of bases to score on either side of the\\nfeatures (default: 100)."
    sample: "Only measure a random sample of this many features\\nfrom the input file."
    verbose: "Requests more detailed output."
    bam_file_of_aligned_reads: "The indexed BAM file containing the aligned ATAC-seq"
    reads_dot: "BED-file-of-features  The BED file containing the features. Use \\\"-\\\" to read"
  }
  output {
    File out_stdout = stdout()
    File out_exclude_flags = "${in_exclude_flags}"
  }
}