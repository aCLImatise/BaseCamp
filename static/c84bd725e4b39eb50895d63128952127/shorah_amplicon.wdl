version 1.0

task ShorahAmplicon {
  input {
    Float? alpha
    Int? region_chrmstartstopregion_format
    Int? seed
    Int? max_cov
    Float? sigma
    Boolean? ignore_indels
    String? of
    Int? win_coverage
    Boolean? diversity
    Float? min_overlap
    File? bam
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
      ~{if defined(region_chrmstartstopregion_format) then ("-r " +  '"' + region_chrmstartstopregion_format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(max_cov) then ("--maxcov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(sigma) then ("--sigma " +  '"' + sigma + '"') else ""} \
      ~{if (ignore_indels) then "--ignore_indels" else ""} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(win_coverage) then ("--win_coverage " +  '"' + win_coverage + '"') else ""} \
      ~{if (diversity) then "--diversity" else ""} \
      ~{if defined(min_overlap) then ("--min_overlap " +  '"' + min_overlap + '"') else ""} \
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
    diversity: "detect the highest entropy region and run there"
    min_overlap: "fraction of read overlap to be included"
    bam: "sorted bam format alignment file"
    fast_a: "reference genome in fasta format"
    v: ""
    shor_ah: ""
    subcommand: ""
    amplicon: ""
  }
  output {
    File out_stdout = stdout()
  }
}