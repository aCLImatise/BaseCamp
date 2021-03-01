version 1.0

task LraAlign {
  input {
    Boolean? ccs
    Boolean? clr
    Boolean? ont
    Boolean? contig
    Boolean? print_alignment_format
    Boolean? use_hardclipping_sam
    Boolean? flag
    Boolean? nint_use_threads
    Boolean? flag_query_positions
    Boolean? sv
    Boolean? at
    Boolean? start
    Boolean? stride
    Boolean? flag_enable_dotplot
    Boolean? pal
    Boolean? al
    String? pass_through
    String genome_dot_fa
    String reads
    Int? reads_two
  }
  command <<<
    lra align \
      ~{genome_dot_fa} \
      ~{reads} \
      ~{reads_two} \
      ~{if (ccs) then "-CCS" else ""} \
      ~{if (clr) then "-CLR" else ""} \
      ~{if (ont) then "-ONT" else ""} \
      ~{if (contig) then "-CONTIG" else ""} \
      ~{if (print_alignment_format) then "-p" else ""} \
      ~{if (use_hardclipping_sam) then "-H" else ""} \
      ~{if (flag) then "-Flag" else ""} \
      ~{if (nint_use_threads) then "-t" else ""} \
      ~{if (flag_query_positions) then "-a" else ""} \
      ~{if (sv) then "-SV" else ""} \
      ~{if (at) then "-at" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (stride) then "--stride" else ""} \
      ~{if (flag_enable_dotplot) then "-d" else ""} \
      ~{if (pal) then "-PAl" else ""} \
      ~{if (al) then "-Al" else ""} \
      ~{if defined(pass_through) then ("--passthrough " +  '"' + pass_through + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lra:1.1.2--h5ef6573_0"
  }
  parameter_meta {
    ccs: "(flag) Align CCS reads."
    clr: "(flag) Align CLR reads."
    ont: "(flag) Align Nanopore reads."
    contig: "(flag) Align large contigs."
    print_alignment_format: "[FMT]   Print alignment format FMT='b' bed, 's' sam, 'p' PAF, 'pc' PAF with cigar, 'a' pairwise alignment."
    use_hardclipping_sam: "Use hard-clipping for SAM output format"
    flag: "F(int)  Skip reads with any flags in F set (bam input only)."
    nint_use_threads: "n(int)   Use n threads (1)"
    flag_query_positions: "(flag)  Query all positions in a read, not just minimizers."
    sv: "(int) (path to svsig file)  Print sv signatures for each alignment with length above the given threshold (DEFAULT:25). And the path of output svsig file"
    at: "(float) a float in (0, 1), Threshold to decide secondary alignments based on chaining value (DEFAULT:0.7)."
    start: "(int)   Start aligning at this read."
    stride: "(int)   Read stride (for multi-job alignment of the same file)."
    flag_enable_dotplot: "(flag)  Enable dotPlot"
    pal: "(int) Print at most how many alignments for one read"
    al: "(int) Compute at most how many alignments for one read"
    pass_through: "auxilary tags from the input unaligned bam to the output"
    genome_dot_fa: ""
    reads: ""
    reads_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}