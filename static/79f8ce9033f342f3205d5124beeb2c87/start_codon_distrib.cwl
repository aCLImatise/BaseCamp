class: CommandLineTool
id: start_codon_distrib.cwl
inputs:
- id: in_dir
  doc: "Use the 4th column of each input line to specify the direction\nof the sequence.\
    \  Positive is forward, negative is reverse\nThe input sequence is assumed to\
    \ be circular"
  type: boolean?
  inputBinding:
    prefix: --dir
- id: in_nowrap
  doc: "Use the actual input coordinates without any wraparound\nthat would be needed\
    \ by a circular genome.  Without this\noption, the output sequence is the shorter\
    \ of the two ways\naround the circle.  Use the -d option to specify direction\n\
    explicitly."
  type: boolean?
  inputBinding:
    prefix: --nowrap
- id: in_three_comma
  doc: output only a comma separated list (no spaces) of atg, gtg, ttg
  type: boolean?
  inputBinding:
    prefix: --3comma
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_coords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- start-codon-distrib
