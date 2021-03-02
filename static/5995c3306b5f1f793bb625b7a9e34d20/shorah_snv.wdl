version 1.0

task ShorahSnv {
  input {
    Float? alpha
    Int? region_chrmstartstopregion_format
    Int? seed
    Int? max_cov
    Float? sigma
    Boolean? ignore_indels
    Float? threshold
    String? of
    Int? increment
    File? bam
    String? fast_a
    Boolean? v
    String shor_ah
    String subcommand
    String snv
  }
  command <<<
    shorah snv \
      ~{shor_ah} \
      ~{subcommand} \
      ~{snv} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(region_chrmstartstopregion_format) then ("-r " +  '"' + region_chrmstartstopregion_format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(max_cov) then ("--maxcov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(sigma) then ("--sigma " +  '"' + sigma + '"') else ""} \
      ~{if (ignore_indels) then "--ignore_indels" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(increment) then ("--increment " +  '"' + increment + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/shorah:1.99.2--py38h032b7f5_1"
  }
  parameter_meta {
    alpha: "alpha in dpm sampling (controls the probability of\\ncreating new classes)"
    region_chrmstartstopregion_format: ":start-stop, --region chrm:start-stop\\nregion in format 'chr:start-stop', e.g.\\n'chrm:1000-3000'"
    seed: "set seed for reproducible results"
    max_cov: "approximate max coverage allowed"
    sigma: "sigma value to use when calling SNVs"
    ignore_indels: "ignore SNVs adjacent to insertions/deletions (legacy\\nbehaviour of 'fil', ignore this option if you don't\\nunderstand)"
    threshold: "pos threshold when calling variants from support files"
    of: "[{csv,vcf} ...], --out_format {csv,vcf} [{csv,vcf} ...]\\noutput format of called SNVs"
    increment: "value of increment to use when calling SNVs (1 used in\\namplicon mode)"
    bam: "sorted bam format alignment file"
    fast_a: "reference genome in fasta format"
    v: ""
    shor_ah: ""
    subcommand: ""
    snv: ""
  }
  output {
    File out_stdout = stdout()
  }
}