version 1.0

task ShorahShotgun {
  input {
    Float? alpha
    Int? region_chrmstartstopregion_format
    Int? seed
    Int? max_cov
    Float? sigma
    Boolean? ignore_indels
    String? of
    Int? win_coverage
    Int? window_size
    Int? win_shifts
    Boolean? keep_files
    File? bam
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
      ~{if defined(region_chrmstartstopregion_format) then ("-r " +  '"' + region_chrmstartstopregion_format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(max_cov) then ("--maxcov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(sigma) then ("--sigma " +  '"' + sigma + '"') else ""} \
      ~{if (ignore_indels) then "--ignore_indels" else ""} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(win_coverage) then ("--win_coverage " +  '"' + win_coverage + '"') else ""} \
      ~{if defined(window_size) then ("--windowsize " +  '"' + window_size + '"') else ""} \
      ~{if defined(win_shifts) then ("--winshifts " +  '"' + win_shifts + '"') else ""} \
      ~{if (keep_files) then "--keep_files" else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alpha: "alpha in dpm sampling"
    region_chrmstartstopregion_format: ":start-stop, --region chrm:start-stop\\nregion in format 'chr:start-stop', e.g.\\n'chrm:1000-3000'"
    seed: "set seed for reproducible results"
    max_cov: "approximate max coverage allowed"
    sigma: "sigma value to use when calling SNVs"
    ignore_indels: "ignore SNVs adjacent to insertions/deletions (legacy\\nbehaviour of 'fil', ignore this option if you don't\\nunderstand)"
    of: "[{csv,vcf} ...], --out_format {csv,vcf} [{csv,vcf} ...]\\noutput format of called SNVs"
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
  output {
    File out_stdout = stdout()
  }
}