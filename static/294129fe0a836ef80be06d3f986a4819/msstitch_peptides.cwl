class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msstitch_peptides.cwl
inputs:
- id: input_file_format
  doc: Input file of {} format
  type: string
  inputBinding:
    prefix: -i
- id: directory_to_output
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: spectra_col
  doc: Specify this column number (first col. is 1) containing PSM table spectrafiles
    (e.g. mzML) if you want to track PSMs when creating peptide tables
  type: string
  inputBinding:
    prefix: --spectracol
- id: score_col_pattern
  doc: Regular expression pattern to find column where score to use (e.g. percolator
    svm-score) is written.
  type: string
  inputBinding:
    prefix: --scorecolpattern
- id: is_ob_quant_col_pattern
  doc: Unique text pattern to identify isobaric quant columns in input table.
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
- id: ms_one_quant_col_pattern
  doc: Unique text pattern to identify precursor quant column in input table.
  type: string
  inputBinding:
    prefix: --ms1quantcolpattern
- id: min_int
  doc: Intensity threshold of PSMs when calculating isobaric ratios. Values below
    threshold will be set to NA.
  type: long
  inputBinding:
    prefix: --minint
- id: denom_cols
  doc: Column numbers of denominator channels when creating a summarized feature table
    with isobaric ratios from PSMs
  type: string[]
  inputBinding:
    prefix: --denomcols
- id: denom_patterns
  doc: 'Regex patterns to detect denominator channels in a PSM table, when creating
    a table with summarized feature isobaric ratios. If both --denompatterns and --denomcol
    are given then column numbers are used. Usage e.g. --denompattern _126 _131. Also
    possible: --denompattern _12[6-7] to detect multiple columns.'
  type: string[]
  inputBinding:
    prefix: --denompatterns
- id: model_q_vals
  doc: Create linear-modeled q-vals for peptides, to avoid overlapping stepped low-qvalue
    data of peptides with different scores
  type: boolean
  inputBinding:
    prefix: --modelqvals
- id: q_val_threshold
  doc: Specifies the inclusion threshold for q-values to fit a linear model to. Any
    scores/q-values below this threshold will not be used.
  type: string
  inputBinding:
    prefix: --qvalthreshold
- id: min_pep_nr
  doc: Specifies the minimal amount of peptides (passing the --qvalthreshold) needed
    to fit a linear model, default is 10.
  type: long
  inputBinding:
    prefix: --minpepnr
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- peptides
