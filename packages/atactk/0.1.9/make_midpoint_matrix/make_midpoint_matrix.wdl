version 1.0

task MakeMidpointMatrix {
  input {
    Boolean? aggregate_output
    Boolean? discrete_output
    Int? bins
    File? exclude_flags
    File? include_flags
    Int? parallel
    Int? quality
    Int? region_extension
    Boolean? verbose
    File bam_file_of_aligned_reads
    String reads_dot
    String ed_otr_dot
  }
  command <<<
    make_midpoint_matrix \
      ~{bam_file_of_aligned_reads} \
      ~{reads_dot} \
      ~{ed_otr_dot} \
      ~{if (aggregate_output) then "--aggregate-output" else ""} \
      ~{if (discrete_output) then "--discrete-output" else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(exclude_flags) then ("--exclude-flags " +  '"' + exclude_flags + '"') else ""} \
      ~{if defined(include_flags) then ("--include-flags " +  '"' + include_flags + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(region_extension) then ("--region-extension " +  '"' + region_extension + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/atactk:0.1.9--pyh3252c3a_0"
  }
  parameter_meta {
    aggregate_output: "Requests an aggregate matrix. See OUTPUT, below."
    discrete_output: "Requests a discrete matrix. See OUTPUT, below."
    bins: "A list of fragment size bin groups and their\\nresolutions. See BINNING, below."
    exclude_flags: "A SAM flag used to exclude alignments from the BAM\\nfile. More than one may be specified. Alignments\\nmatching any exclude flag will not be counted. The\\ndefault is to exclude all unmapped reads/mates by\\nfiltering out any alignments with SAM flags 4 or 8\\nset."
    include_flags: "A SAM flag that determines which alignments from the\\nBAM file will be included in the counts. More than one\\nmay be specified. Any alignment matching any include\\nflag will be counted. The default is to include\\nproperly paired and mapped reads by filtering for SAM\\nflags 83, 99, 147, or 163."
    parallel: "The number of parallel scoring processes to use\\n(default: 1)."
    quality: "The minimum mapping quality required for a read to be\\ncounted (default: 30)."
    region_extension: "The number of bases to score on either side of the\\nmotifs (default: 100)."
    verbose: "Requests more detailed output."
    bam_file_of_aligned_reads: "The indexed BAM file containing the aligned ATAC-seq"
    reads_dot: "BED-file-of-motifs    The BED file containing the motifs. Use \\\"-\\\" to read"
    ed_otr_dot: "motif     e.r."
  }
  output {
    File out_stdout = stdout()
    File out_exclude_flags = "${in_exclude_flags}"
  }
}