version 1.0

task RibotricerLearnCutoff {
  input {
    String? ribo_bams
    String? rna_bams
    String? ribo_t_svs
    String? rna_t_svs
    String? ribot_ricer_index
    String? prefix
    String? filter_by_tx_annotation
    Float? phase_score_cut_off
    Int? min_valid_codons
    Float? sampling_ratio
    Int? n_bootstraps
  }
  command <<<
    ribotricer learn-cutoff \
      ~{if defined(ribo_bams) then ("--ribo_bams " +  '"' + ribo_bams + '"') else ""} \
      ~{if defined(rna_bams) then ("--rna_bams " +  '"' + rna_bams + '"') else ""} \
      ~{if defined(ribo_t_svs) then ("--ribo_tsvs " +  '"' + ribo_t_svs + '"') else ""} \
      ~{if defined(rna_t_svs) then ("--rna_tsvs " +  '"' + rna_t_svs + '"') else ""} \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(filter_by_tx_annotation) then ("--filter_by_tx_annotation " +  '"' + filter_by_tx_annotation + '"') else ""} \
      ~{if defined(phase_score_cut_off) then ("--phase_score_cutoff " +  '"' + phase_score_cut_off + '"') else ""} \
      ~{if defined(min_valid_codons) then ("--min_valid_codons " +  '"' + min_valid_codons + '"') else ""} \
      ~{if defined(sampling_ratio) then ("--sampling_ratio " +  '"' + sampling_ratio + '"') else ""} \
      ~{if defined(n_bootstraps) then ("--n_bootstraps " +  '"' + n_bootstraps + '"') else ""}
  >>>
  parameter_meta {
    ribo_bams: "Path(s) to Ribo-seq BAM file separated by comma"
    rna_bams: "Path(s) to RNA-seq BAM file separated by comma"
    ribo_t_svs: "Path(s) to Ribo-seq *_translating_ORFs.tsv file separated by comma"
    rna_t_svs: "Path(s) to RNA-seq *_translating_ORFs.tsv file separated by comma"
    ribot_ricer_index: "Path to the index file of ribotricer This file should be generated using ribotricer prepare-orfs (required for BAM input)"
    prefix: "Prefix to output file"
    filter_by_tx_annotation: "transcript_type to filter regions by [default: protein_coding]"
    phase_score_cut_off: "Phase score cutoff for determining active translation (required for BAM input) [default: 0.428571428571]"
    min_valid_codons: "Minimum number of codons with non-zero reads for determining active translation (required for BAM input)  [default: 5]"
    sampling_ratio: "Number of protein coding regions to sample per bootstrap  [default: 0.33]"
    n_bootstraps: "Number of bootstraps  [default: 20000]"
  }
}