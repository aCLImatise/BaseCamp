version 1.0

task DRAMvpyStrainer {
  input {
    File? input_annotations
    File? input_fast_a
    String? output_fast_a
    Boolean? fast_as
    Boolean? scaffolds
    Boolean? genes
    Boolean? identifiers
    Boolean? categories
    String? amg_flags
    Boolean? aux_scores
    Boolean? vir_sorter_category
    Boolean? putative_a_mgs
    Int? max_auxiliary_score
    Boolean? remove_transposons
    Boolean? remove_fs
  }
  command <<<
    DRAM_v_py strainer \
      ~{if defined(input_annotations) then ("--input_annotations " +  '"' + input_annotations + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output_fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if (fast_as) then "--fastas" else ""} \
      ~{if (scaffolds) then "--scaffolds" else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if (identifiers) then "--identifiers" else ""} \
      ~{if (categories) then "--categories" else ""} \
      ~{if defined(amg_flags) then ("--amg_flags " +  '"' + amg_flags + '"') else ""} \
      ~{if (aux_scores) then "--aux_scores" else ""} \
      ~{if (vir_sorter_category) then "--virsorter_category" else ""} \
      ~{if (putative_a_mgs) then "--putative_amgs" else ""} \
      ~{if defined(max_auxiliary_score) then ("--max_auxiliary_score " +  '"' + max_auxiliary_score + '"') else ""} \
      ~{if (remove_transposons) then "--remove_transposons" else ""} \
      ~{if (remove_fs) then "--remove_fs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.1.1--py_0"
  }
  parameter_meta {
    input_annotations: "annotations file to pull genes from (default: None)"
    input_fast_a: "fasta file to filter (default: None)"
    output_fast_a: "location to write filtered fasta (default:\\npull_genes.fasta)"
    fast_as: "[FASTAS [FASTAS ...]]\\nspace separated list of fastas to keep (default: None)"
    scaffolds: "[SCAFFOLDS [SCAFFOLDS ...]]\\nspace separated list of scaffolds to keep (default:\\nNone)"
    genes: "[GENES [GENES ...]]\\nspace separated list of genes to keep (default: None)"
    identifiers: "[IDENTIFIERS [IDENTIFIERS ...]]\\ndatabase identifiers to keep (default: None)"
    categories: "[CATEGORIES [CATEGORIES ...]]\\ndistillate categories to keep genes from (default:\\nNone)"
    amg_flags: "AMG flags to keep, if any one is present then it will\\nbe kept (default: None)"
    aux_scores: "[AUX_SCORES [AUX_SCORES ...]]\\nspace separate list of auxiliary scores to keep\\n(default: None)"
    vir_sorter_category: "[VIRSORTER_CATEGORY [VIRSORTER_CATEGORY ...]]\\nspace separate list of virsorter categories to keep\\n(default: None)"
    putative_a_mgs: "Only keep genes considered putative AMGs (default:\\nFalse)"
    max_auxiliary_score: "Maximum auxiliary score to consider gene as potential\\nAMG (default: 3)"
    remove_transposons: "Do not consider genes on scaffolds with transposons as\\npotential AMGs (default: False)"
    remove_fs: "Do not consider genes near ends of scaffolds as\\npotential AMGs (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}