class: CommandLineTool
id: convert_table.py.cwl
inputs:
- id: input
  doc: 'Input table to convert. If there are multiple input files (e.g. if multiple
    HUMAnN2 gene tables for different samples should be converted to a single PICRUSt2
    table) then specify them all: file1 file2 file3...'
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Path to output. Corresponds to folder name if multiple files are output, otherwise
    it will be a filename.
  type: string
  inputBinding:
    prefix: --output
- id: conversion
  doc: Type of conversion to perform ('contrib_to_legacy', 'humann2_unstrat_to_picrust2',
    'humann2_strat_to_picrust2', 'picrust2_unstrat_to_humann2_split', 'picrust2_strat_to_humann2_split',
    or 'picrust2_to_humann2_merged').
  type: string
  inputBinding:
    prefix: --conversion
- id: raw_abun
  doc: When converting to legacy contributional table output abundance (i.e. OTUAbundanceInSample
    column) as raw abundance rather than relative abundances (relative abundances
    are the default).
  type: boolean
  inputBinding:
    prefix: --raw_abun
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_table.py
