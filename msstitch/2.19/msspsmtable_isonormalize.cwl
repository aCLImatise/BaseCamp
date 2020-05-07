class: CommandLineTool
id: msspsmtable_isonormalize.cwl
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
- id: median_psms
  doc: In case of using a separate PSM table with more data to generate more robust
    medians (i.e. a superset of input PSMs), specify that file here. The normalization
    factors will be calculated on this file, and the PSMs in the input will be adjusted
    using those factors rather than factors derived from solely their own quantification
    data
  type: string
  inputBinding:
    prefix: --medianpsms
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
outputs: []
cwlVersion: v1.1
baseCommand:
- msspsmtable
- isonormalize
