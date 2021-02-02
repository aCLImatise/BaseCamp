class: CommandLineTool
id: restover.cwl
inputs:
- id: in_data_file
  doc: datafile   Restriction enzyme data file (optional)
  type: boolean
  inputBinding:
    prefix: -datafile
- id: in_m_file
  doc: "datafile   [Emethylsites.dat] Restriction enzyme\nmethylation data file"
  type: boolean
  inputBinding:
    prefix: -mfile
- id: in_min
  doc: "integer    [1] Minimum cuts per RE (Integer from 1 to\n1000)"
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: "integer    [2000000000] Maximum cuts per RE (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -max
- id: in_single
  doc: boolean    [N] Force single site only cuts
  type: boolean
  inputBinding:
    prefix: -single
- id: in_three_prime
  doc: "boolean    [N] Use 3' overhang e.g. BamHI has CTAG as a\n5' overhang, and\
    \ ApaI has CCGG as 3'\noverhang."
  type: boolean
  inputBinding:
    prefix: -threeprime
- id: in_plasmid
  doc: boolean    [N] Allow circular DNA
  type: boolean
  inputBinding:
    prefix: -plasmid
- id: in_methylation
  doc: "boolean    [N] If this is set then RE recognition sites\nwill not match methylated\
    \ bases."
  type: boolean
  inputBinding:
    prefix: -methylation
- id: in_html
  doc: boolean    [N] Create HTML output
  type: boolean
  inputBinding:
    prefix: -html
- id: in_alphabetic
  doc: boolean    [N] Sort output alphabetically
  type: boolean
  inputBinding:
    prefix: -alphabetic
- id: in_fragments
  doc: boolean    [N] Show fragment lengths
  type: boolean
  inputBinding:
    prefix: -fragments
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- restover
