class: CommandLineTool
id: ../../../ProbeMatch.cwl
inputs:
- id: max_dist
  doc: Give a max distance
  type: string
  inputBinding:
    prefix: --maxDist
- id: outfile
  doc: Write output to a file
  type: string
  inputBinding:
    prefix: --outFile
- id: primer_match
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: primer_list_vertical_line_primer_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ProbeMatch
