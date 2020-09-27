class: CommandLineTool
id: megalodon_extras_validate_aggregated_modified_bases.cwl
inputs:
- id: in_modified_bed_methyl_files
  doc: "MODIFIED_BED_METHYL_FILES\n[MODIFIED_BED_METHYL_FILES ...]\n[--ground-truth-csvs\
    \ GROUND_TRUTH_CSVS [GROUND_TRUTH_CSVS ...]]\n[--control-bed-methyl-files CONTROL_BED_METHYL_FILES\
    \ [CONTROL_BED_METHYL_FILES ...]]\n[--valid-positions VALID_POSITIONS]\n[--coverage-threshold\
    \ COVERAGE_THRESHOLD]\n[--strand-offset STRAND_OFFSET]\n[--allow-unbalance-classes]\n\
    [--out-pdf OUT_PDF]\n[--out-filename OUT_FILENAME]"
  type: File
  inputBinding:
    prefix: --modified-bed-methyl-files
- id: in_ground_truth_csv_s
  doc: "Ground truth csvs with (chrm, strand, pos, is_mod)\nvalues. To collapse to\
    \ forward strand coordinates,\nstrand should be \".\"."
  type: string[]
  inputBinding:
    prefix: --ground-truth-csvs
- id: in_control_bed_methyl_files
  doc: Bed methyl files from control sample(s).
  type: string[]
  inputBinding:
    prefix: --control-bed-methyl-files
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
- id: in_strand_offset
  doc: "Offset to combine stranded results. Positive value\nindicates reverse strand\
    \ sites have higher position\nvalues. Default treat strands independently."
  type: string
  inputBinding:
    prefix: --strand-offset
- id: in_allow_unbalance_classes
  doc: "Allow unbalanced classes in modified base metric\ncomputation. Default: Balance\
    \ size of modified and\ncanonical classes for each comparison made."
  type: boolean
  inputBinding:
    prefix: --allow-unbalance-classes
- id: in_out_pdf
  doc: 'Output pdf filename. Default:'
  type: File
  inputBinding:
    prefix: --out-pdf
- id: in_megalodon_agg_validation_dot_pdf
  doc: --out-filename OUT_FILENAME
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_modified_bed_methyl_files
  doc: "MODIFIED_BED_METHYL_FILES\n[MODIFIED_BED_METHYL_FILES ...]\n[--ground-truth-csvs\
    \ GROUND_TRUTH_CSVS [GROUND_TRUTH_CSVS ...]]\n[--control-bed-methyl-files CONTROL_BED_METHYL_FILES\
    \ [CONTROL_BED_METHYL_FILES ...]]\n[--valid-positions VALID_POSITIONS]\n[--coverage-threshold\
    \ COVERAGE_THRESHOLD]\n[--strand-offset STRAND_OFFSET]\n[--allow-unbalance-classes]\n\
    [--out-pdf OUT_PDF]\n[--out-filename OUT_FILENAME]"
  type: File
  outputBinding:
    glob: $(inputs.in_modified_bed_methyl_files)
- id: out_out_pdf
  doc: 'Output pdf filename. Default:'
  type: File
  outputBinding:
    glob: $(inputs.in_out_pdf)
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- validate
- aggregated_modified_bases
