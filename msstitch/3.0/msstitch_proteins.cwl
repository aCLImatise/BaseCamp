class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msstitch_proteins.cwl
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
- id: decoy_fn
  doc: Decoy peptide table input file
  type: string
  inputBinding:
    prefix: --decoyfn
- id: score_col_pattern
  doc: Regular expression pattern to find column where score to use (e.g. percolator
    svm-score) is written.
  type: string
  inputBinding:
    prefix: --scorecolpattern
- id: log_score
  doc: Score, e.g. q-values will be converted to -log10 values.
  type: boolean
  inputBinding:
    prefix: --logscore
- id: is_ob_quant_col_pattern
  doc: Unique text pattern to identify isobaric quant columns in input table.
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
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
- id: ms_one_quant
  doc: Specifies to add precursor quant data from lookup DB to output table
  type: boolean
  inputBinding:
    prefix: --ms1quant
- id: psm_table
  doc: PSM table file containing isobaric quant data to add to table.
  type: string
  inputBinding:
    prefix: --psmtable
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- proteins
