version 1.0

task ShorahAmplicon {
  input {
    Float? alpha
    String? startstop__region
    Int? seed
    Int? max_cov
    Float? sigma
    Boolean? ignore_indels
    String? of
    Int? win_coverage
    Boolean? diversity
    Float? min_overlap
    String? bam
    String? fast_a
    Boolean? v
    String shor_ah
    String subcommand
    String amplicon
  }
  command <<<
    shorah amplicon \
      ~{shor_ah} \
      ~{subcommand} \
      ~{amplicon} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(startstop__region) then ("-r " +  '"' + startstop__region + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(max_cov) then ("--maxcov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(sigma) then ("--sigma " +  '"' + sigma + '"') else ""} \
      ~{true="--ignore_indels" false="" ignore_indels} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(win_coverage) then ("--win_coverage " +  '"' + win_coverage + '"') else ""} \
      ~{true="--diversity" false="" diversity} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    alpha: "alpha in dpm sampling"
    startstop__region: ":start-stop, --region chrm:start-stop region in format 'chr:start-stop', e.g. 'chrm:1000-3000'"
    seed: "set seed for reproducible results"
    max_cov: "approximate max coverage allowed"
    sigma: "sigma value to use when calling SNVs"
    ignore_indels: "ignore SNVs adjacent to insertions/deletions (legacy behaviour of 'fil', ignore this option if you don't understand)"
    of: "[{csv,vcf} ...], --out_format {csv,vcf} [{csv,vcf} ...] output format of called SNVs"
    win_coverage: "coverage threshold. Omit windows with low coverage"
    diversity: "detect the highest entropy region and run there"
    min_overlap: "fraction of read overlap to be included"
    bam: "sorted bam format alignment file"
    fast_a: "reference genome in fasta format"
    v: ""
    shor_ah: ""
    subcommand: ""
    amplicon: ""
  }
}