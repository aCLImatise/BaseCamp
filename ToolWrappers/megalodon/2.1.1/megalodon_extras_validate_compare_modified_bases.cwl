class: CommandLineTool
id: ../../../megalodon_extras_validate_compare_modified_bases.cwl
inputs:
- id: in_var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: --sample1-bed-methyl-files
- id: in_var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: --sample2-bed-methyl-files
- id: in_sample_names
  doc: "SAMPLE_NAMES\nName for provided samples. Default: ['Sample 1',\n'Sample 2']"
  type: long
  inputBinding:
    prefix: --sample-names
- id: in_valid_positions
  doc: "BED file containing positions to be considered.\nMultiple files may be provided"
  type: File
  inputBinding:
    prefix: --valid-positions
- id: in_coverage_threshold
  doc: "Only include sites with sufficient coverage. Default:\n1 (= All sites)"
  type: long
  inputBinding:
    prefix: --coverage-threshold
- id: in_heat_map_num_bins
  doc: 'Number of bins for heatmap plotting. Default: 31'
  type: long
  inputBinding:
    prefix: --heatmap-num-bins
- id: in_strand_offset
  doc: "Offset to combine stranded results. Positive value\nindicates reverse strand\
    \ sites have higher position\nvalues. Default treat strands independently."
  type: string
  inputBinding:
    prefix: --strand-offset
- id: in_out_pdf
  doc: 'Output pdf filename. Default:'
  type: File
  inputBinding:
    prefix: --out-pdf
- id: in_var_8
  doc: '[SAMPLE1_BED_METHYL_FILES ...]'
  type: long
  inputBinding:
    position: 0
- id: in_var_9
  doc: '[SAMPLE2_BED_METHYL_FILES ...]'
  type: long
  inputBinding:
    position: 1
- id: in_megalodon_mod_coma_paris_on_dot_pdf
  doc: --out-filename OUT_FILENAME
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_pdf
  doc: 'Output pdf filename. Default:'
  type: File
  outputBinding:
    glob: $(inputs.in_out_pdf)
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- validate
- compare_modified_bases
