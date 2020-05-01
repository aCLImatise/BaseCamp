#!/usr/bin/env cwl-runner

baseCommand:
- proteinInference.py
class: CommandLineTool
cwlVersion: v1.0
id: proteininference.py
inputs:
- doc: A regex cleavage pattern such as [KR]|{P} to cleave proteins with.
  id: enzyme_pattern
  inputBinding:
    prefix: --enzyme-pattern
  type: string
- doc: Minimum cleavage length
  id: min
  inputBinding:
    prefix: --min
  type: long
- doc: Maximum cleavage length
  id: max
  inputBinding:
    prefix: --max
  type: long
- doc: Provide to append iBAQ values as well (requires protein inference).
  id: i_baq
  inputBinding:
    prefix: --ibaq
  type: boolean
- doc: The column with precursor area (defaults to header lines containing 'Precursor').
  id: precursors
  inputBinding:
    prefix: --precursors
  type: string
- doc: 'The function to apply to groups of iBAQ values (for multiple peptide matches).
    Options: concat, mean, median, var, std, sum, count'
  id: i_baq_function
  inputBinding:
    prefix: --ibaq-function
  type: string
- doc: Use only non-redundant theoretical tryptic peptides for the iBAQ denominator.
  id: non_redundant
  inputBinding:
    prefix: --non-redundant
  type: boolean
- doc: Normalize iBAQ to total intensity of column (useful for comparing multiple
    samples).
  id: normalize
  inputBinding:
    prefix: --normalize
  type: boolean
- doc: Only group proteins with unique peptides
  id: unique_only
  inputBinding:
    prefix: --unique-only
  type: boolean
- doc: Write the position of the peptide matches.
  id: position
  inputBinding:
    prefix: --position
  type: boolean
- doc: Treat peptides as case-sensitive (ie separate modified peptides)
  id: case_sensitive
  inputBinding:
    prefix: --case-sensitive
  type: boolean
- doc: '[MOD_OUT]   The file to write a modification-centric summary to.'
  id: mod_out
  inputBinding:
    prefix: --mod-out
  type: boolean
- doc: Write the position in the parent protein of the modification (requires case-sensitive
    and modifications being lower-cased).
  id: modification_site
  inputBinding:
    prefix: --modification-site
  type: boolean
- doc: The column containing modification information.
  id: mod_col
  inputBinding:
    prefix: --mod-col
  type: string
- doc: 'The function to apply. Options: concat, mean, median, var, std, sum, count'
  id: mod_col_func
  inputBinding:
    prefix: --mod-col-func
  type: string
