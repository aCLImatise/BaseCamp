class: CommandLineTool
id: makeprotseq.cwl
inputs:
- id: in_pep_stats_file
  doc: "infile     This file should be a pepstats output file.\nProtein sequences\
    \ will be created with the\ncomposition in the pepstats output file."
  type: File
  inputBinding:
    prefix: -pepstatsfile
- id: in_amount
  doc: "integer    [100] Number of sequences created (Integer 1\nor more)"
  type: boolean
  inputBinding:
    prefix: -amount
- id: in_length
  doc: "integer    [100] Length of each sequence (Integer 1 or\nmore)"
  type: boolean
  inputBinding:
    prefix: -length
- id: in_use_insert
  doc: toggle     [N] Do you want to make an insert
  type: boolean
  inputBinding:
    prefix: -useinsert
- id: in_six_dot_six_dot_zero_dot_zero
  doc: 'Standard (Mandatory) qualifiers (* if not always prompted):'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pep_stats_file
  doc: "infile     This file should be a pepstats output file.\nProtein sequences\
    \ will be created with the\ncomposition in the pepstats output file."
  type: File
  outputBinding:
    glob: $(inputs.in_pep_stats_file)
cwlVersion: v1.1
baseCommand:
- makeprotseq
