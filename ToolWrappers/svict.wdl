version 1.0

task Svict {
  input {
    Boolean? input_alignment_file
    Boolean? reference
    File? prefix_output_file
    Boolean? annotation
    Boolean? min_support
    Boolean? max_support
    Boolean? min_length
    Boolean? max_length
    Boolean? print_reads
    Boolean? print_stats
    Boolean? window_size
    Boolean? min_sc
    Boolean? no_in_del
    Boolean? assembler_overlap
    Boolean? anchor
    Boolean? km_er
    Boolean? uncertainty
    Boolean? sub_optimal
    Boolean? heuristic
    Boolean? dump_contigs
    Boolean? resume
    String svc_it
  }
  command <<<
    svict \
      ~{svc_it} \
      ~{if (input_alignment_file) then "--input" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (prefix_output_file) then "--output" else ""} \
      ~{if (annotation) then "--annotation" else ""} \
      ~{if (min_support) then "--min_support" else ""} \
      ~{if (max_support) then "--max_support" else ""} \
      ~{if (min_length) then "--min_length" else ""} \
      ~{if (max_length) then "--max_length" else ""} \
      ~{if (print_reads) then "--print_reads" else ""} \
      ~{if (print_stats) then "--print_stats" else ""} \
      ~{if (window_size) then "--window_size" else ""} \
      ~{if (min_sc) then "--min_sc" else ""} \
      ~{if (no_in_del) then "--no_indel" else ""} \
      ~{if (assembler_overlap) then "--assembler_overlap" else ""} \
      ~{if (anchor) then "--anchor" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if (uncertainty) then "--uncertainty" else ""} \
      ~{if (sub_optimal) then "--sub_optimal" else ""} \
      ~{if (heuristic) then "--heuristic" else ""} \
      ~{if (dump_contigs) then "--dump_contigs" else ""} \
      ~{if (resume) then "--resume" else ""}
  >>>
  parameter_meta {
    input_alignment_file: "[FILE]\\nInput alignment file. This file should be a sorted SAM or BAM file."
    reference: "[FILE]\\nReference geneome that the reads are algined to."
    prefix_output_file: "[STRING]\\nPrefix of output file (default out)"
    annotation: "[FILE]\\nGTF file. Enables annotation of SV calls and fusion identification."
    min_support: "[INT]\\nThe minimum number of supporting reads required to be considered a SV (default 2)."
    max_support: "[INT]\\nThe maximum number of supporting reads required to be considered a SV, could be used to filter out germline calls (default unlimited)."
    min_length: "[INT]\\nMin SV length (default 30)."
    max_length: "[INT]\\nMax SV length (default 20000)."
    print_reads: "Print all contigs and associated reads as additional output out.vcf.reads, out is the prefix specified in -o|--output, when activated."
    print_stats: ":\\nPrint statistics of detected SV calls and fusions to stderr."
    window_size: "[INT]\\nThe size of the sliding window collecting all reads with soft-clip/split positions in it to form the breakpoint specific cluster for contig assembly.\\nLarger window size could assign a read to more clusters for potentially higher sensitivity with the cost of increased running time (default 3)."
    min_sc: "[INT]\\nMinimum soft clip length for a read to be considered as unmapped or incorrectly mapped to be extracted for contig assembly (default 10)."
    no_in_del: "Ignore indels in the input BAM/SAM (I and D in cigar) when extracting potential breakpoints."
    assembler_overlap: "[INT]\\nThe minimum lenth of overlaps between 2 reads in overlap-layout-consensus contig assembly (default 50)."
    anchor: "[INT]\\nAnchor length. Intervals shorter than this value would be discarded in interval chaining procedure for locating contigs (default 30)."
    km_er: "[INT]\\nk-mer length to index and remap assembled contigs to reference genome (default 14)."
    uncertainty: "[INT]\\nUncertainty around the breakpoint position.\\nSee \\\"Interval Chaining for Optimal Mapping\\\" in publication (default 8)."
    sub_optimal: "[INT]\\nFor a contig, SViCT will report all paths which are not worse than the optimal by c on the DAGs to achieve potentially better sensitivity.\\nSee \\\"Interval Chaining for Optimal Mapping\\\" in publication (default 0 - co-optimals only, negative value disables)."
    heuristic: "Use clustering heuristic (good for data with PCR duplicates)."
    dump_contigs: "Dump contigs in fastq format for mapping."
    resume: ":\\nResume at the interval chaining stage with mapped contigs."
    svc_it: "-- Structural Variant in ctDNA Sequencing Data"
  }
  output {
    File out_stdout = stdout()
    File out_prefix_output_file = "${in_prefix_output_file}"
  }
}