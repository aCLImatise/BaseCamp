class: CommandLineTool
id: mhcflurry_predict_scan.cwl
inputs:
- id: in_list_supported_alleles
  doc: Print the list of supported alleles and exits
  type: boolean
  inputBinding:
    prefix: --list-supported-alleles
- id: in_list_supported_peptide_lengths
  doc: Print the list of supported peptide lengths and exits
  type: boolean
  inputBinding:
    prefix: --list-supported-peptide-lengths
- id: in_input_format
  doc: "Format of input file. By default, it is guessed from\nthe file extension."
  type: string
  inputBinding:
    prefix: --input-format
- id: in_alleles
  doc: Alleles to predict
  type: string[]
  inputBinding:
    prefix: --alleles
- id: in_sequences
  doc: "Sequences to predict (exclusive with passing an input\nfile)"
  type: string[]
  inputBinding:
    prefix: --sequences
- id: in_sequence_id_column
  doc: "Input CSV column name for sequence IDs. Default:\n'sequence_id'"
  type: string
  inputBinding:
    prefix: --sequence-id-column
- id: in_sequence_column
  doc: "Input CSV column name for sequences. Default:\n'sequence'"
  type: string
  inputBinding:
    prefix: --sequence-column
- id: in_no_throw
  doc: "Return NaNs for unsupported alleles or peptides\ninstead of raising"
  type: boolean
  inputBinding:
    prefix: --no-throw
- id: in_peptide_lengths
  doc: "Peptide lengths to consider. Pass as START-END (e.g.\n8-11) or a comma-separated\
    \ list (8,9,10,11). When\nusing START-END, the range is INCLUSIVE on both ends.\n\
    Default: 8-11."
  type: long
  inputBinding:
    prefix: --peptide-lengths
- id: in_results_all
  doc: "Return results for all peptides regardless of\naffinity, etc."
  type: boolean
  inputBinding:
    prefix: --results-all
- id: in_results_best
  doc: "Take the top result for each sequence according to the\nspecified predicted\
    \ quantity"
  type: string
  inputBinding:
    prefix: --results-best
- id: in_results_filtered
  doc: Filter results by the specified quantity.
  type: string
  inputBinding:
    prefix: --results-filtered
- id: in_threshold_presentation_score
  doc: "Threshold if filtering by presentation score. Default:\n0.7"
  type: double
  inputBinding:
    prefix: --threshold-presentation-score
- id: in_threshold_processing_score
  doc: "Threshold if filtering by processing score. Default:\n0.5"
  type: double
  inputBinding:
    prefix: --threshold-processing-score
- id: in_threshold_affinity
  doc: 'Threshold if filtering by affinity. Default: 500'
  type: long
  inputBinding:
    prefix: --threshold-affinity
- id: in_threshold_affinity_percentile
  doc: "Threshold if filtering by affinity percentile.\nDefault: 2.0"
  type: double
  inputBinding:
    prefix: --threshold-affinity-percentile
- id: in_out
  doc: Output CSV
  type: string
  inputBinding:
    prefix: --out
- id: in_output_delimiter
  doc: "Delimiter character for results. Default: ','"
  type: string
  inputBinding:
    prefix: --output-delimiter
- id: in_no_affinity_percentile
  doc: Do not include affinity percentile rank
  type: boolean
  inputBinding:
    prefix: --no-affinity-percentile
- id: in_models
  doc: 'Directory containing presentation models.Default: /roo'
  type: Directory
  inputBinding:
    prefix: --models
- id: in_no_flanking
  doc: "Do not use flanking sequence information in\npredictions\n"
  type: boolean
  inputBinding:
    prefix: --no-flanking
- id: in_help
  doc: 'Help:'
  type: long
  inputBinding:
    position: 0
- id: in_input
  doc: Input CSV or FASTA
  type: string
  inputBinding:
    position: 0
- id: in_t_slashdot_local_slash_share_slash_mhc_flurry_slash_four_slash_two_dot_zero_dot_zero_slash_models_class_one_present
  doc: ation/models
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mhcflurry-predict-scan
