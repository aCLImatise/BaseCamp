version 1.0

task ShorahShotgun {
  input {
    Float? alpha
    String? startstop__region
    Int? seed
    Int? max_cov
    Float? sigma
    Boolean? ignore_indels
    String? of
    Int? win_coverage
    Int? window_size
    Int? win_shifts
    Boolean? keep_files
    String? bam
    String? fast_a
    Boolean? v
    String shor_ah
    String subcommand
    String shotgun
  }
  command <<<
    shorah shotgun \
      ~{shor_ah} \
      ~{subcommand} \
      ~{shotgun} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(startstop__region) then ("-r " +  '"' + startstop__region + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(max_cov) then ("--maxcov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(sigma) then ("--sigma " +  '"' + sigma + '"') else ""} \
      ~{true="--ignore_indels" false="" ignore_indels} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(win_coverage) then ("--win_coverage " +  '"' + win_coverage + '"') else ""} \
      ~{if defined(window_size) then ("--windowsize " +  '"' + window_size + '"') else ""} \
      ~{if defined(win_shifts) then ("--winshifts " +  '"' + win_shifts + '"') else ""} \
      ~{true="--keep_files" false="" keep_files} \
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
    window_size: "window size"
    win_shifts: "number of window shifts"
    keep_files: "keep all intermediate files"
    bam: "sorted bam format alignment file"
    fast_a: "reference genome in fasta format"
    v: ""
    shor_ah: ""
    subcommand: ""
    shotgun: ""
  }
}