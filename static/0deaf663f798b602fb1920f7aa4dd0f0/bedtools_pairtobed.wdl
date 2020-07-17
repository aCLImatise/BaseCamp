version 1.0

task BedtoolsPairtobed {
  input {
    Boolean? a_bam
    Boolean? ub_am
    Boolean? bed_pe
    Boolean? ed
    Boolean? minimum_overlap_required
    Boolean? require_same_strandedness
    Boolean? require_different_strandedness
    Boolean? type
    String? a
    String? b
  }
  command <<<
    bedtools pairtobed \
      ~{true="-abam" false="" a_bam} \
      ~{true="-ubam" false="" ub_am} \
      ~{true="-bedpe" false="" bed_pe} \
      ~{true="-ed" false="" ed} \
      ~{true="-f" false="" minimum_overlap_required} \
      ~{true="-s" false="" require_same_strandedness} \
      ~{true="-S" false="" require_different_strandedness} \
      ~{true="-type" false="" type} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    a_bam: "The A input file is in BAM format.  Output will be BAM as well. Replaces -a. - Requires BAM to be grouped or sorted by query."
    ub_am: "Write uncompressed BAM output. Default writes compressed BAM. is to write output in BAM when using -abam."
    bed_pe: "When using BAM input (-abam), write output as BEDPE. The default is to write output in BAM when using -abam."
    ed: "Use BAM total edit distance (NM tag) for BEDPE score. - Default for BEDPE is to use the minimum of of the two mapping qualities for the pair. - When -ed is used the total edit distance from the two mates is reported as the score."
    minimum_overlap_required: "Minimum overlap required as fraction of A (e.g. 0.05). Default is 1E-9 (effectively 1bp)."
    require_same_strandedness: "Require same strandedness when finding overlaps. Default is to ignore stand. Not applicable with -type inspan or -type outspan."
    require_different_strandedness: "Require different strandedness when finding overlaps. Default is to ignore stand. Not applicable with -type inspan or -type outspan."
    type: "Approach to reporting overlaps between BEDPE and BED. either  Report overlaps if either end of A overlaps B. - Default. neither Report A if neither end of A overlaps B. both    Report overlaps if both ends of A overlap  B. xor     Report overlaps if one and only one end of A overlaps B. notboth Report overlaps if neither end or one and only one  end of A overlap B.  That is, xor + neither. ispan   Report overlaps between [end1, start2] of A and B. - Note: If chrom1 <> chrom2, entry is ignored. ospan   Report overlaps between [start1, end2] of A and B. - Note: If chrom1 <> chrom2, entry is ignored. notispan        Report A if ispan of A doesn't overlap B. - Note: If chrom1 <> chrom2, entry is ignored. notospan        Report A if ospan of A doesn't overlap B. - Note: If chrom1 <> chrom2, entry is ignored."
    a: ""
    b: ""
  }
}