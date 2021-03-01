version 1.0

task Predicthaplo {
  input {
    File? sam
    File? reference
    String? prefix
    Int? visualization_level
    Int? have_true_haplotypes
    File? true_haplotypes
    Int? do_local_analysis
    Float? max_gap_fraction
    Float? min_align_score_fraction
    Float? alpha_mn_local
    Float? min_overlap_factor
    Float? local_window_size_factor
    Int? cluster_number
    Int? n_sample
    Int? include_deletions
  }
  command <<<
    predicthaplo \
      ~{if defined(sam) then ("--sam " +  '"' + sam + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(visualization_level) then ("--visualization_level " +  '"' + visualization_level + '"') else ""} \
      ~{if defined(have_true_haplotypes) then ("--have_true_haplotypes " +  '"' + have_true_haplotypes + '"') else ""} \
      ~{if defined(true_haplotypes) then ("--true_haplotypes " +  '"' + true_haplotypes + '"') else ""} \
      ~{if defined(do_local_analysis) then ("--do_local_Analysis " +  '"' + do_local_analysis + '"') else ""} \
      ~{if defined(max_gap_fraction) then ("--max_gap_fraction " +  '"' + max_gap_fraction + '"') else ""} \
      ~{if defined(min_align_score_fraction) then ("--min_align_score_fraction " +  '"' + min_align_score_fraction + '"') else ""} \
      ~{if defined(alpha_mn_local) then ("--alpha_MN_local " +  '"' + alpha_mn_local + '"') else ""} \
      ~{if defined(min_overlap_factor) then ("--min_overlap_factor " +  '"' + min_overlap_factor + '"') else ""} \
      ~{if defined(local_window_size_factor) then ("--local_window_size_factor " +  '"' + local_window_size_factor + '"') else ""} \
      ~{if defined(cluster_number) then ("--cluster_number " +  '"' + cluster_number + '"') else ""} \
      ~{if defined(n_sample) then ("--nSample " +  '"' + n_sample + '"') else ""} \
      ~{if defined(include_deletions) then ("--include_deletions " +  '"' + include_deletions + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/predicthaplo:2.1.4--h8f7e1a0_0"
  }
  parameter_meta {
    sam: "Filename of the aligned reads (sam format)."
    reference: "Filename of reference sequence (FASTA)."
    prefix: "Prefix of output files."
    visualization_level: "do_visualize (1 = true, 0 = false)."
    have_true_haplotypes: "have_true_haplotypes (1 = true, 0 = false)."
    true_haplotypes: "Filename of the true haplotypes (MSA in FASTA format) (fill in any dummy filename if there is no \\\"true\\\" haplotypes)."
    do_local_analysis: "do_local_analysis (1 = true, 0 = false) (must be 1 in the first run)."
    max_gap_fraction: "Relative to alignment length."
    min_align_score_fraction: "Relative to read length."
    alpha_mn_local: "Prior parameter for multinomial tables over the nucleotides."
    min_overlap_factor: "Reads must have an overlap with the local reconstruction window of at least this factor times the window size."
    local_window_size_factor: "Size of  local reconstruction window relative to the median of the read lengths."
    cluster_number: "Max number of clusters (in the truncated Dirichlet process)."
    n_sample: "MCMC iterations."
    include_deletions: "Include deletions (0 = no, 1 = yes)."
  }
  output {
    File out_stdout = stdout()
  }
}