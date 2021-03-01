version 1.0

task RunFishtacopy {
  input {
    File? taxonomic_abundance_profiles
    File? functional_abundance_profiles
    File? labels
    File? genomic_content_of_tax_a
    Boolean? perform_inference_of_genomic_content
    Int? label_to_find_enrichment_in
    Int? label_to_find_enrichment_against
    String? output_prefix
    String? map_function_level
    File? map_function_file
    Boolean? perform_inference_on_ko_level
    String? multiple_hypothesis_correction
    Int? maximum_functions_to_analyze
    String? tax_a_assessment_method
    String? score_to_compute
    Int? max_score_cut_off
    String? na_rep
    Int? number_of_permutations
    Int? number_of_shapley_orderings_per_tax_a
    File? enrichment_results
    String? single_function_filter
    String? multi_function_filter_list
    Boolean? functional_profile_already_corrected_with_music_c
    Boolean? log
  }
  command <<<
    run_fishtaco_py \
      ~{if defined(taxonomic_abundance_profiles) then ("--taxonomic_abundance_profiles " +  '"' + taxonomic_abundance_profiles + '"') else ""} \
      ~{if defined(functional_abundance_profiles) then ("--functional_abundance_profiles " +  '"' + functional_abundance_profiles + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(genomic_content_of_tax_a) then ("--genomic_content_of_taxa " +  '"' + genomic_content_of_tax_a + '"') else ""} \
      ~{if (perform_inference_of_genomic_content) then "--perform_inference_of_genomic_content" else ""} \
      ~{if defined(label_to_find_enrichment_in) then ("-label_to_find_enrichment_in " +  '"' + label_to_find_enrichment_in + '"') else ""} \
      ~{if defined(label_to_find_enrichment_against) then ("-label_to_find_enrichment_against " +  '"' + label_to_find_enrichment_against + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(map_function_level) then ("-map_function_level " +  '"' + map_function_level + '"') else ""} \
      ~{if defined(map_function_file) then ("-map_function_file " +  '"' + map_function_file + '"') else ""} \
      ~{if (perform_inference_on_ko_level) then "-perform_inference_on_ko_level" else ""} \
      ~{if defined(multiple_hypothesis_correction) then ("--multiple_hypothesis_correction " +  '"' + multiple_hypothesis_correction + '"') else ""} \
      ~{if defined(maximum_functions_to_analyze) then ("--maximum_functions_to_analyze " +  '"' + maximum_functions_to_analyze + '"') else ""} \
      ~{if defined(tax_a_assessment_method) then ("--taxa_assessment_method " +  '"' + tax_a_assessment_method + '"') else ""} \
      ~{if defined(score_to_compute) then ("--score_to_compute " +  '"' + score_to_compute + '"') else ""} \
      ~{if defined(max_score_cut_off) then ("--max_score_cutoff " +  '"' + max_score_cut_off + '"') else ""} \
      ~{if defined(na_rep) then ("-na_rep " +  '"' + na_rep + '"') else ""} \
      ~{if defined(number_of_permutations) then ("-number_of_permutations " +  '"' + number_of_permutations + '"') else ""} \
      ~{if defined(number_of_shapley_orderings_per_tax_a) then ("-number_of_shapley_orderings_per_taxa " +  '"' + number_of_shapley_orderings_per_tax_a + '"') else ""} \
      ~{if defined(enrichment_results) then ("--enrichment_results " +  '"' + enrichment_results + '"') else ""} \
      ~{if defined(single_function_filter) then ("-single_function_filter " +  '"' + single_function_filter + '"') else ""} \
      ~{if defined(multi_function_filter_list) then ("-multi_function_filter_list " +  '"' + multi_function_filter_list + '"') else ""} \
      ~{if (functional_profile_already_corrected_with_music_c) then "-functional_profile_already_corrected_with_musicc" else ""} \
      ~{if (log) then "--log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    taxonomic_abundance_profiles: "Input file of taxonomic abundance profiles"
    functional_abundance_profiles: "Input file of functional abundance profiles"
    labels: "Input file of label assignment for the two sample sets\\nbeing compared"
    genomic_content_of_tax_a: "Input file of genomic content of each taxa"
    perform_inference_of_genomic_content: "Defines if genome content is inferred (either de-novo\\nor prior-based if genomic content is also given)"
    label_to_find_enrichment_in: "Define sample set label to find enrichment in\\n(default: 1)"
    label_to_find_enrichment_against: "Define sample set label to find enrichment against\\n(default: 0)"
    output_prefix: "Output prefix for result files (default: fishtaco_out)"
    map_function_level: "Map functions to pathways or modules (default:\\npathway)"
    map_function_file: "pathways or modules mapping file (default: use\\ninternal KEGG file)"
    perform_inference_on_ko_level: "Indicates to perform the inference on the KO level\\n(default: use the mapped functional level, e.g.,\\npathway)"
    multiple_hypothesis_correction: "Multiple hypothesis correction for functional\\nenrichment (default: FDR-0.05)"
    maximum_functions_to_analyze: "Maximum number of enriched functions to consider\\n(default: All)"
    tax_a_assessment_method: "The method used when assessing taxa to compute\\nindividual contributions (default: multi_taxa)"
    score_to_compute: "The enrichment score to compute for each function\\n(default: wilcoxon)"
    max_score_cut_off: "The maximum score cutoff (for example, when dividing\\nby zero) (default: 100)"
    na_rep: "How to represent NAs in the output (default: NA)"
    number_of_permutations: "number of permutations (default: 100)"
    number_of_shapley_orderings_per_tax_a: "number of shapley orderings per taxa (default: 5)"
    enrichment_results: "Pre-computed functional enrichment results from the\\ncompute_differential_abundance.py script (default:\\nNone)"
    single_function_filter: "Limit analysis only to this single function (default:\\nNone)"
    multi_function_filter_list: "Limit analysis only to these comma-separated functions\\n(default: None)"
    functional_profile_already_corrected_with_music_c: "Indicates that the functional profile has been already\\ncorrected with MUSiCC prior to running FishTaco\\n(default: False)"
    log: "Write to log file (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}