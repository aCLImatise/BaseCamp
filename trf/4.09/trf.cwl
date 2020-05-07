class: CommandLineTool
id: trf.cwl
inputs:
- id: m
  doc: masked sequence file
  type: boolean
  inputBinding:
    prefix: -m
- id: f
  doc: flanking sequence
  type: boolean
  inputBinding:
    prefix: -f
- id: d
  doc: data file
  type: boolean
  inputBinding:
    prefix: -d
- id: r
  doc: no redundancy elimination
  type: boolean
  inputBinding:
    prefix: -r
- id: l
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
