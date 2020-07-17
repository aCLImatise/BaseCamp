class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/trf.cwl
inputs:
- id: masked_sequence_file
  doc: masked sequence file
  type: boolean
  inputBinding:
    prefix: -m
- id: flanking_sequence
  doc: flanking sequence
  type: boolean
  inputBinding:
    prefix: -f
- id: data_file
  doc: data file
  type: boolean
  inputBinding:
    prefix: -d
- id: no_redundancy_elimination
  doc: no redundancy elimination
  type: boolean
  inputBinding:
    prefix: -r
- id: maximum_tr_length
  doc: maximum TR length expected (in millions) (eg, -l 3 or -l=3 for 3 million) Human
    genome HG38 would need -l 6
  type: string
  inputBinding:
    prefix: -l
- id: ngs
  doc: more compact .dat output on multisequence files, returns 0 on success. Output
    is printed to the screen, not a file. You may pipe input in with this option using
    - for file name. Short 50 flanks are appended to .dat output.
  type: boolean
  inputBinding:
    prefix: -ngs
outputs: []
cwlVersion: v1.1
baseCommand:
- trf
