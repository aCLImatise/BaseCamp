class: CommandLineTool
id: msstitch_peptides.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File
  inputBinding:
    prefix: -o
- id: in_spectra_col
  doc: "Specify this column number (first col. is 1)\ncontaining PSM table spectrafiles\
    \ (e.g. mzML) if you\nwant to track PSMs when creating peptide tables"
  type: long
  inputBinding:
    prefix: --spectracol
- id: in_regular_expression_pattern
  doc: "Regular expression pattern to find column where score\nto use (e.g. percolator\
    \ svm-score) is written."
  type: string
  inputBinding:
    prefix: --scorecolpattern
- id: in_is_ob_quant_col_pattern
  doc: "Unique text pattern to identify isobaric quant columns\nin input table."
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
- id: in_ms_one_quant_col_pattern
  doc: "Unique text pattern to identify precursor quant column\nin input table."
  type: long
  inputBinding:
    prefix: --ms1quantcolpattern
- id: in_min_int
  doc: "Intensity threshold of PSMs when calculating isobaric\nratios. Values below\
    \ threshold will be set to NA."
  type: long
  inputBinding:
    prefix: --minint
- id: in_denom_cols
  doc: "Column numbers of denominator channels when creating a\nsummarized feature\
    \ table with isobaric ratios from\nPSMs"
  type: string[]
  inputBinding:
    prefix: --denomcols
- id: in_denom_patterns
  doc: "Regex patterns to detect denominator channels in a PSM\ntable, when creating\
    \ a table with summarized feature\nisobaric ratios. If both --denompatterns and\n\
    --denomcol are given then column numbers are used.\nUsage e.g. --denompattern\
    \ _126 _131. Also possible:\n--denompattern _12[6-7] to detect multiple columns."
  type: string[]
  inputBinding:
    prefix: --denompatterns
- id: in_model_q_vals
  doc: "Create linear-modeled q-vals for peptides, to avoid\noverlapping stepped low-qvalue\
    \ data of peptides with\ndifferent scores"
  type: boolean
  inputBinding:
    prefix: --modelqvals
- id: in_q_val_threshold
  doc: "Specifies the inclusion threshold for q-values to fit\na linear model to.\
    \ Any scores/q-values below this\nthreshold will not be used."
  type: string
  inputBinding:
    prefix: --qvalthreshold
- id: in_min_pep_nr
  doc: "Specifies the minimal amount of peptides (passing the\n--qvalthreshold) needed\
    \ to fit a linear model, default\nis 10.\n"
  type: long
  inputBinding:
    prefix: --minpepnr
- id: in_var_13
  doc: '[--isobquantcolpattern QUANTCOLPATTERN]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- msstitch
- peptides
