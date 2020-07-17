version 1.0

task MakeCutMatrix {
  input {
    Boolean? aggregate_output
    Boolean? discrete_output
    String? bins
    String? exclude_flags
    String? include_flags
    String? cut_point_offset
    String? parallel
    String? quality
    String? region_extension
    Boolean? verbose
    String bam_file_of_aligned_reads
    String bed_file_of_motifs
  }
  command <<<
    make_cut_matrix \
      ~{bam_file_of_aligned_reads} \
      ~{bed_file_of_motifs} \
      ~{true="--aggregate-output" false="" aggregate_output} \
      ~{true="--discrete-output" false="" discrete_output} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(exclude_flags) then ("--exclude-flags " +  '"' + exclude_flags + '"') else ""} \
      ~{if defined(include_flags) then ("--include-flags " +  '"' + include_flags + '"') else ""} \
      ~{if defined(cut_point_offset) then ("--cut-point-offset " +  '"' + cut_point_offset + '"') else ""} \
      ~{if defined(parallel) then ("--parallel " +  '"' + parallel + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(region_extension) then ("--region-extension " +  '"' + region_extension + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    aggregate_output: "Requests a matrix in which each row represents a position in the extended region and the mean cut point count at that position across all motifs. See OUTPUT, below."
    discrete_output: "Requests a matrix in which each row represents all the cut point counts around one motif. See OUTPUT, below."
    bins: "A list of fragment size bin groups and their resolutions. See BINNING, below."
    exclude_flags: "A SAM flag used to exclude alignments from the BAM file. More than one may be specified. Alignments matching any exclude flag will not be counted. The default is to exclude all unmapped reads/mates by filtering out any alignments with SAM flags 4 or 8 set."
    include_flags: "A SAM flag that determines which alignments from the BAM file will be included in the counts. More than one may be specified. Any alignment matching any include flag will be counted. The default is to include properly paired and mapped reads by filtering for SAM flags 83, 99, 147, or 163."
    cut_point_offset: "The position of cut points relative to the beginning of a read and in the direction toward the read end, as a number of bases (default: 4)."
    parallel: "The number of parallel scoring processes to use (default: 1)."
    quality: "The minimum mapping quality required for a read to be counted (default: 30)."
    region_extension: "The number of bases to score on either side of the motifs (default: 100)."
    verbose: "Requests more detailed output."
    bam_file_of_aligned_reads: "The indexed BAM file containing the aligned ATAC-seq reads."
    bed_file_of_motifs: "The BED file containing the motifs. Use \"-\" to read from standard input."
  }
}