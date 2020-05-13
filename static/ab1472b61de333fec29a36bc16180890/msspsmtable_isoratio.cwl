class: CommandLineTool
id: msspsmtable_isoratio.cwl
inputs:
- id: i
  doc: Input file of TSV PSM table (MSGF+) format
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: is_ob_quant_col_pattern
  doc: Unique text pattern to identify isobaric quant columns in input table.
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
- id: denom_patterns
  doc: 'Regex patterns to detect denominator channels when creating a PSM table with
    normalized ratios. If both patterns and column numbers are given then column numbers
    are used. Usage e.g. --denompattern _126 _131. Also possible: --denompattern _12[6-7]
    to detect multiple columns.'
  type: string[]
  inputBinding:
    prefix: --denompatterns
- id: denom_cols
  doc: Column numbers of denominator channels when creating a PSM table with normalized
    ratios
  type: string[]
  inputBinding:
    prefix: --denomcols
- id: min_int
  doc: Intensity threshold of PSMs when calculating isobaric ratios. Values below
    threshold will be set to NA.
  type: long
  inputBinding:
    prefix: --minint
- id: target_table
  doc: Table to output PSM or other feature quant data to. Used when calculating PSM
    isobaric intenstity ratios for proteins, peptides, genes. Leaving empty will output
    to a new table, or when no --protcol is specified, pastes ratios to the PSM table
    they are fetched from.
  type: string
  inputBinding:
    prefix: --targettable
- id: prot_col
  doc: Column number in table in which protein or gene accessions are. stored. First
    column number is 1. Use in case of not using standard {} column
  type: string
  inputBinding:
    prefix: --protcol
- id: normalize
  doc: Normalization method for isobaric quant data on protein or peptide level. Currently
    only median centering is used. Use "--normalize median"
  type: string
  inputBinding:
    prefix: --normalize
- id: norm_ratios
  doc: In case of using a separate table to generate channel medians for normalizing,
    specify that file here. The normalization factors will be calculated from this
    file, and the features in the input will be adjusted using those factors rather
    than factors derived from their own quantification data
  type: string
  inputBinding:
    prefix: --norm-ratios
outputs: []
cwlVersion: v1.1
baseCommand:
- msspsmtable
- isoratio
