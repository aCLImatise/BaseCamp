class: CommandLineTool
id: proteinInference.py.cwl
inputs:
- id: enzyme_pattern
  doc: A regex cleavage pattern such as [KR]|{P} to cleave proteins with.
  type: string
  inputBinding:
    prefix: --enzyme-pattern
- id: min
  doc: Minimum cleavage length
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: Maximum cleavage length
  type: long
  inputBinding:
    prefix: --max
- id: i_baq
  doc: Provide to append iBAQ values as well (requires protein inference).
  type: boolean
  inputBinding:
    prefix: --ibaq
- id: precursors
  doc: The column with precursor area (defaults to header lines containing 'Precursor').
  type: string
  inputBinding:
    prefix: --precursors
- id: i_baq_function
  doc: 'The function to apply to groups of iBAQ values (for multiple peptide matches).
    Options: concat, mean, median, var, std, sum, count'
  type: string
  inputBinding:
    prefix: --ibaq-function
- id: non_redundant
  doc: Use only non-redundant theoretical tryptic peptides for the iBAQ denominator.
  type: boolean
  inputBinding:
    prefix: --non-redundant
- id: normalize
  doc: Normalize iBAQ to total intensity of column (useful for comparing multiple
    samples).
  type: boolean
  inputBinding:
    prefix: --normalize
- id: unique_only
  doc: Only group proteins with unique peptides
  type: boolean
  inputBinding:
    prefix: --unique-only
- id: position
  doc: Write the position of the peptide matches.
  type: boolean
  inputBinding:
    prefix: --position
- id: case_sensitive
  doc: Treat peptides as case-sensitive (ie separate modified peptides)
  type: boolean
  inputBinding:
    prefix: --case-sensitive
- id: mod_out
  doc: '[MOD_OUT]   The file to write a modification-centric summary to.'
  type: boolean
  inputBinding:
    prefix: --mod-out
- id: modification_site
  doc: Write the position in the parent protein of the modification (requires case-sensitive
    and modifications being lower-cased).
  type: boolean
  inputBinding:
    prefix: --modification-site
- id: mod_col
  doc: The column containing modification information.
  type: string
  inputBinding:
    prefix: --mod-col
- id: mod_col_func
  doc: 'The function to apply. Options: concat, mean, median, var, std, sum, count'
  type: string
  inputBinding:
    prefix: --mod-col-func
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinInference.py
