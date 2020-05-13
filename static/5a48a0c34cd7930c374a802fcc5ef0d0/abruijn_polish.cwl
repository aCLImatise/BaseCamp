class: CommandLineTool
id: abruijn_polish.cwl
inputs:
- id: bubbles_file
  doc: path to bubbles file
  type: string
  inputBinding:
    position: 0
- id: subs_matrix
  doc: path to substitution matrix
  type: string
  inputBinding:
    position: 1
- id: hop_o_matrix
  doc: path to homopolymer matrix
  type: string
  inputBinding:
    position: 2
- id: out_file
  doc: path to output file
  type: string
  inputBinding:
    position: 3
- id: v
  doc: path to the file with verbose log [default = not set]
  type: string
  inputBinding:
    prefix: -v
- id: t
  doc: number of parallel threads [default = 1]
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- abruijn-polish
