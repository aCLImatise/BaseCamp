class: CommandLineTool
id: run_fishtaco.py.cwl
inputs:
- id: in_taxonomic_abundance_profiles
  doc: Input file of taxonomic abundance profiles
  type: File?
  inputBinding:
    prefix: --taxonomic_abundance_profiles
- id: in_functional_abundance_profiles
  doc: Input file of functional abundance profiles
  type: File?
  inputBinding:
    prefix: --functional_abundance_profiles
- id: in_labels
  doc: "Input file of label assignment for the two sample sets\nbeing compared"
  type: File?
  inputBinding:
    prefix: --labels
- id: in_genomic_content_of_tax_a
  doc: Input file of genomic content of each taxa
  type: File?
  inputBinding:
    prefix: --genomic_content_of_taxa
- id: in_perform_inference_of_genomic_content
  doc: "Defines if genome content is inferred (either de-novo\nor prior-based if genomic\
    \ content is also given)"
  type: boolean?
  inputBinding:
    prefix: --perform_inference_of_genomic_content
- id: in_label_to_find_enrichment_in
  doc: "Define sample set label to find enrichment in\n(default: 1)"
  type: long?
  inputBinding:
    prefix: -label_to_find_enrichment_in
- id: in_label_to_find_enrichment_against
  doc: "Define sample set label to find enrichment against\n(default: 0)"
  type: long?
  inputBinding:
    prefix: -label_to_find_enrichment_against
- id: in_output_prefix
  doc: 'Output prefix for result files (default: fishtaco_out)'
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_map_function_level
  doc: "Map functions to pathways or modules (default:\npathway)"
  type: string?
  inputBinding:
    prefix: -map_function_level
- id: in_map_function_file
  doc: "pathways or modules mapping file (default: use\ninternal KEGG file)"
  type: File?
  inputBinding:
    prefix: -map_function_file
- id: in_perform_inference_on_ko_level
  doc: "Indicates to perform the inference on the KO level\n(default: use the mapped\
    \ functional level, e.g.,\npathway)"
  type: boolean?
  inputBinding:
    prefix: -perform_inference_on_ko_level
- id: in_multiple_hypothesis_correction
  doc: "Multiple hypothesis correction for functional\nenrichment (default: FDR-0.05)"
  type: string?
  inputBinding:
    prefix: --multiple_hypothesis_correction
- id: in_maximum_functions_to_analyze
  doc: "Maximum number of enriched functions to consider\n(default: All)"
  type: long?
  inputBinding:
    prefix: --maximum_functions_to_analyze
- id: in_tax_a_assessment_method
  doc: "The method used when assessing taxa to compute\nindividual contributions (default:\
    \ multi_taxa)"
  type: string?
  inputBinding:
    prefix: --taxa_assessment_method
- id: in_score_to_compute
  doc: "The enrichment score to compute for each function\n(default: wilcoxon)"
  type: string?
  inputBinding:
    prefix: --score_to_compute
- id: in_max_score_cut_off
  doc: "The maximum score cutoff (for example, when dividing\nby zero) (default: 100)"
  type: long?
  inputBinding:
    prefix: --max_score_cutoff
- id: in_na_rep
  doc: 'How to represent NAs in the output (default: NA)'
  type: string?
  inputBinding:
    prefix: -na_rep
- id: in_number_of_permutations
  doc: 'number of permutations (default: 100)'
  type: long?
  inputBinding:
    prefix: -number_of_permutations
- id: in_number_of_shapley_orderings_per_tax_a
  doc: 'number of shapley orderings per taxa (default: 5)'
  type: long?
  inputBinding:
    prefix: -number_of_shapley_orderings_per_taxa
- id: in_enrichment_results
  doc: "Pre-computed functional enrichment results from the\ncompute_differential_abundance.py\
    \ script (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --enrichment_results
- id: in_single_function_filter
  doc: "Limit analysis only to this single function (default:\nNone)"
  type: string?
  inputBinding:
    prefix: -single_function_filter
- id: in_multi_function_filter_list
  doc: "Limit analysis only to these comma-separated functions\n(default: None)"
  type: string?
  inputBinding:
    prefix: -multi_function_filter_list
- id: in_functional_profile_already_corrected_with_music_c
  doc: "Indicates that the functional profile has been already\ncorrected with MUSiCC\
    \ prior to running FishTaco\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: -functional_profile_already_corrected_with_musicc
- id: in_log
  doc: 'Write to log file (default: False)'
  type: boolean?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_fishtaco.py
