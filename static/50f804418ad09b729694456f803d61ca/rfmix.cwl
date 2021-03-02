class: CommandLineTool
id: rfmix.cwl
inputs:
- id: in_query_file
  doc: "(required)\nVCF file with samples to analyze                      (required)"
  type: File?
  inputBinding:
    prefix: --query-file
- id: in_reference_file
  doc: "(required)\nVCF file with reference individuals                   (required)"
  type: File?
  inputBinding:
    prefix: --reference-file
- id: in_sample_map
  doc: "(required)\nReference panel sample population classification map  (required)"
  type: string?
  inputBinding:
    prefix: --sample-map
- id: in_genetic_map
  doc: "(required)\nGenetic map file                                      (required)"
  type: File?
  inputBinding:
    prefix: --genetic-map
- id: in_output_basename
  doc: "(required)\nBasename (prefix) for output files                    (required)"
  type: string?
  inputBinding:
    prefix: --output-basename
- id: in_chromosome
  doc: "(required)\nExecute only on specified chromosome                  (required)"
  type: string?
  inputBinding:
    prefix: --chromosome
- id: in_crf_spacing
  doc: Conditional Random Field spacing (# of SNPs)
  type: double?
  inputBinding:
    prefix: --crf-spacing
- id: in_rf_window_size
  doc: Random forest window size (class estimation window size)
  type: double?
  inputBinding:
    prefix: --rf-window-size
- id: in_crf_weight
  doc: Weight of observation term relative to transition term in conditional random
    field
  type: double?
  inputBinding:
    prefix: --crf-weight
- id: in_generations
  doc: Average number of generations since expected admixture
  type: double?
  inputBinding:
    prefix: --generations
- id: in_em_iterations
  doc: Maximum number of EM iterations
  type: long?
  inputBinding:
    prefix: --em-iterations
- id: in_reanalyze_reference
  doc: In EM, analyze local ancestry of the reference panel and reclassify it
  type: boolean?
  inputBinding:
    prefix: --reanalyze-reference
- id: in_node_size
  doc: Terminal node size for random forest trees
  type: long?
  inputBinding:
    prefix: --node-size
- id: in_trees
  doc: Number of tree in random forest to estimate population class probability
  type: long?
  inputBinding:
    prefix: --trees
- id: in_max_missing
  doc: Maximum proportion of missing data allowed to include a SNP
  type: double?
  inputBinding:
    prefix: --max-missing
- id: in_bootstrap_mode
  doc: Specify random forest bootstrap mode as integer code (see manual)
  type: long?
  inputBinding:
    prefix: --bootstrap-mode
- id: in_rf_minimum_snps
  doc: With genetic sized rf windows, include at least this many SNPs regardless of
    span
  type: long?
  inputBinding:
    prefix: --rf-minimum-snps
- id: in_analyze_range
  doc: Physical position range, specified as <start pos>-<end pos>, in Mbp (decimal
    allowed)
  type: double?
  inputBinding:
    prefix: --analyze-range
- id: in_debug
  doc: Turn on any debugging output
  type: string?
  inputBinding:
    prefix: --debug
- id: in_n_threads
  doc: Force number of simultaneous thread for parallel execution
  type: long?
  inputBinding:
    prefix: --n-threads
- id: in_random_seed
  doc: "Seed value for random number generation (integer)\n(maybe specified in hexadecimal\
    \ by preceeding with 0x), or the string\n\"clock\" to seed with the current system\
    \ time.\n"
  type: long?
  inputBinding:
    prefix: --random-seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rfmix
