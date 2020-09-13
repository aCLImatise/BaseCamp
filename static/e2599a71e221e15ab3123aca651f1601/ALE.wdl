version 1.0

task ALE {
  input {
    Int? km_er
    Int? q_off
    String? pl
    File? pm
    Boolean? n_out
    Boolean? min_ll
    Boolean? meta_genome
    Boolean? realign
    File? snp_report
    Int? min_qual
    Boolean? options
    String alignments_dot
    String? s_vertical_line_b
    String am
    String assembly_dot_fast_a
  }
  command <<<
    ALE \
      ~{alignments_dot} \
      ~{s_vertical_line_b} \
      ~{am} \
      ~{assembly_dot_fast_a} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(q_off) then ("--qOff " +  '"' + q_off + '"') else ""} \
      ~{if defined(pl) then ("--pl " +  '"' + pl + '"') else ""} \
      ~{if defined(pm) then ("--pm " +  '"' + pm + '"') else ""} \
      ~{if (n_out) then "--nout" else ""} \
      ~{if (min_ll) then "--minLL" else ""} \
      ~{if (meta_genome) then "--metagenome" else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if defined(snp_report) then ("--SNPreport " +  '"' + snp_report + '"') else ""} \
      ~{if defined(min_qual) then ("--minQual " +  '"' + min_qual + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    km_er: ": Kmer depth for kmer stats [4]"
    q_off: ": Quality ascii offset (illumina) [33] or 64 (or 0)"
    pl: ": placementOutputBAM"
    pm: ": library parameter file (auto outputs .param)"
    n_out: ": only output meta information (no per base) [off]"
    min_ll: ": the minimum log Likelihood (-120)"
    meta_genome: ": Evaluate each contig independently for depth & kmer metrics"
    realign: "[=matchScore,misMatchPenalty,gapOpenPenalty,gapExtPenalty,minimumSoftClip (default: 1,3,11,4,8) ]\\nRealign reads with Striped-Smith-Waterman honoring ambiguous reference bases\\nand stacking homo-polymer indels\\nfor PacBio, try --realign=1,5,2,1,20 (similar to BWA-SW recommendations)"
    snp_report: ": Creates a new text file reporting all SNP phasing\\nobserved by a read against ambiguous bases in the reference"
    min_qual: ": Minimum quality score to use in Z-normalization (default 3).\\nIllumina quality scores can be unreliable below this threshold\\n"
    options: ""
    alignments_dot: ""
    s_vertical_line_b: ""
    am: ""
    assembly_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}