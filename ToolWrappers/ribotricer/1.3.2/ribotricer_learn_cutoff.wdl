version 1.0

task RibotricerLearncutoff {
  input {
    File? ribo_bams
    File? rna_t_svs
    File? ribot_ricer_index
    File? prefix
    String? filter_by_tx_annotation
    Float? phase_score_cut_off
    Int? min_valid_codons
    Float? sampling_ratio
    Int? n_bootstraps
  }
  command <<<
    ribotricer learn_cutoff \
      ~{if defined(ribo_bams) then ("--ribo_bams " +  '"' + ribo_bams + '"') else ""} \
      ~{if defined(rna_t_svs) then ("--rna_tsvs " +  '"' + rna_t_svs + '"') else ""} \
      ~{if defined(ribot_ricer_index) then ("--ribotricer_index " +  '"' + ribot_ricer_index + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(filter_by_tx_annotation) then ("--filter_by_tx_annotation " +  '"' + filter_by_tx_annotation + '"') else ""} \
      ~{if defined(phase_score_cut_off) then ("--phase_score_cutoff " +  '"' + phase_score_cut_off + '"') else ""} \
      ~{if defined(min_valid_codons) then ("--min_valid_codons " +  '"' + min_valid_codons + '"') else ""} \
      ~{if defined(sampling_ratio) then ("--sampling_ratio " +  '"' + sampling_ratio + '"') else ""} \
      ~{if defined(n_bootstraps) then ("--n_bootstraps " +  '"' + n_bootstraps + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ribo_bams: "Path(s) to Ribo-seq BAM file separated by"
    rna_t_svs: "Path(s) to RNA-seq *_translating_ORFs.tsv\\nfile separated by comma"
    ribot_ricer_index: "Path to the index file of ribotricer This\\nfile should be generated using ribotricer\\nprepare-orfs (required for BAM input)"
    prefix: "Prefix to output file"
    filter_by_tx_annotation: "transcript_type to filter regions by\\n[default: protein_coding]"
    phase_score_cut_off: "Phase score cutoff for determining active\\ntranslation (required for BAM input)\\n[default: 0.428571428571]"
    min_valid_codons: "Minimum number of codons with non-zero reads\\nfor determining active translation (required\\nfor BAM input)  [default: 5]"
    sampling_ratio: "Number of protein coding regions to sample\\nper bootstrap  [default: 0.33]"
    n_bootstraps: "Number of bootstraps  [default: 20000]"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}