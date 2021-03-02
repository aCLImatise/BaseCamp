version 1.0

task Ustacks {
  input {
    Boolean? name
    Boolean? keep_high_cov
    Boolean? high_cov_th_res
    Int? max_locus_stacks
    Int? k_len
    Boolean? max_gaps
    Boolean? min_aln_len
    Boolean? disable_gapped
    Boolean? model_type
    Int? alpha
    Int? bound_low
    Int? bound_high
    Int? bc_err_freq
  }
  command <<<
    ustacks \
      ~{if (name) then "--name" else ""} \
      ~{if (keep_high_cov) then "--keep-high-cov" else ""} \
      ~{if (high_cov_th_res) then "--high-cov-thres" else ""} \
      ~{if defined(max_locus_stacks) then ("--max-locus-stacks " +  '"' + max_locus_stacks + '"') else ""} \
      ~{if defined(k_len) then ("--k-len " +  '"' + k_len + '"') else ""} \
      ~{if (max_gaps) then "--max-gaps" else ""} \
      ~{if (min_aln_len) then "--min-aln-len" else ""} \
      ~{if (disable_gapped) then "--disable-gapped" else ""} \
      ~{if (model_type) then "--model-type" else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(bound_low) then ("--bound-low " +  '"' + bound_low + '"') else ""} \
      ~{if defined(bound_high) then ("--bound-high " +  '"' + bound_high + '"') else ""} \
      ~{if defined(bc_err_freq) then ("--bc-err-freq " +  '"' + bc_err_freq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: ": a name for the sample (default: input file name minus the suffix)."
    keep_high_cov: ": disable the algorithm that removes highly-repetitive stacks and nearby errors."
    high_cov_th_res: ": highly-repetitive stacks threshold, in standard deviation units (default: 3.0)."
    max_locus_stacks: ": maximum number of stacks at a single de novo locus (default 3)."
    k_len: ": specify k-mer size for matching between alleles and loci (automatically calculated by default)."
    max_gaps: ": number of gaps allowed between stacks before merging (default: 2)."
    min_aln_len: ": minimum length of aligned sequence in a gapped alignment (default: 0.80)."
    disable_gapped: ": do not preform gapped alignments between stacks (default: gapped alignements enabled)."
    model_type: ": either 'snp' (default), 'bounded', or 'fixed'"
    alpha: ": chi square significance level required to call a heterozygote or homozygote, either 0.1, 0.05 (default), 0.01, or 0.001."
    bound_low: ": lower bound for epsilon, the error rate, between 0 and 1.0 (default 0)."
    bound_high: ": upper bound for epsilon, the error rate, between 0 and 1.0 (default 1)."
    bc_err_freq: ": specify the barcode error frequency, between 0 and 1.0."
  }
  output {
    File out_stdout = stdout()
  }
}