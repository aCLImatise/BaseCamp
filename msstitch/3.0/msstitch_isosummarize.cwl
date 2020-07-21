class: CommandLineTool
id: ../../../msstitch_isosummarize.cwl
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
- id: is_ob_quant_col_pattern
  doc: Unique text pattern to identify isobaric quant columns in input table.
  type: string
  inputBinding:
    prefix: --isobquantcolpattern
- id: denom_patterns
  doc: 'Regex patterns to detect denominator channels in a PSM table, when creating
    a table with summarized feature isobaric ratios. If both --denompatterns and --denomcol
    are given then column numbers are used. Usage e.g. --denompattern _126 _131. Also
    possible: --denompattern _12[6-7] to detect multiple columns.'
  type: string[]
  inputBinding:
    prefix: --denompatterns
- id: denom_cols
  doc: Column numbers of denominator channels when creating a summarized feature table
    with isobaric ratios from PSMs
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
    to a new table, or when no --featcol is specified, pastes ratios to the PSM table
    they are fetched from.
  type: string
  inputBinding:
    prefix: --targettable
- id: feat_col
  doc: Column number in table in which protein or gene accessions are. stored. First
    column number is 1. Use in case of not using standard {} column
  type: string
  inputBinding:
    prefix: --featcol
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- isosummarize
