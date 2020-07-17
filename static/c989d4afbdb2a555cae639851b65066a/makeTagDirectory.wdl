version 1.0

task MakeTagDirectory {
  input {
    Boolean? force_five_th
    Boolean? unique
    Boolean? keep_one
    Boolean? keep_all
    Boolean? mis
    Boolean? sspe
    Boolean? read_one_slash_read_two
    Boolean? rm_soft
    Boolean? omits_n
    Boolean? min_counts
    String? mc_context
    String? filter_reads
    Directory directory
    String alignment_file_one
    File? file
    String? two
  }
  command <<<
    makeTagDirectory \
      ~{directory} \
      ~{alignment_file_one} \
      ~{file} \
      ~{two} \
      ~{true="-force5th" false="" force_five_th} \
      ~{true="-unique" false="" unique} \
      ~{true="-keepOne" false="" keep_one} \
      ~{true="-keepAll" false="" keep_all} \
      ~{true="-mis" false="" mis} \
      ~{true="-sspe" false="" sspe} \
      ~{true="-read1/-read2" false="" read_one_slash_read_two} \
      ~{true="-rmsoft" false="" rm_soft} \
      ~{true="-omitSN" false="" omits_n} \
      ~{true="-minCounts" false="" min_counts} \
      ~{if defined(mc_context) then ("-mCcontext " +  '"' + mc_context + '"') else ""} \
      ~{if defined(filter_reads) then ("-filterReads " +  '"' + filter_reads + '"') else ""}
  >>>
  parameter_meta {
    force_five_th: "(5th column of BED file contains # of reads mapping to position)"
    unique: "(keep if there is a single best alignment based on mapq) -mapq <#> (Minimum mapq for -unique, default: 10, set negative to use AS:i:/XS:i:)"
    keep_one: "(keep one of the best alignments even if others exist)"
    keep_all: "(include all alignments in SAM file)"
    mis: "(Maximum allowed mismatches, default: no limit, uses MD:Z: tag)"
    sspe: "(strand specific, paired-end reads[flips strand of 2nd read to match])"
    read_one_slash_read_two: "(only analyze 1st or 2nd read for PE sequencing)"
    rm_soft: "(clip soft clipped regions from reads, default: assume read extends/mismatch)"
    omits_n: "(ignore alignments with splicing/soft clipping, i.e. use for csRNA-seq)"
    min_counts: "<#> (minimum number of reads to report mC/C ratios, default: 10)"
    mc_context: "(only use C's in this context, default: CG)"
    filter_reads: "<offset> <keep|remove> (filter reads based on oligo sequence in the genome)"
    directory: ""
    alignment_file_one: ""
    file: ""
    two: ""
  }
}