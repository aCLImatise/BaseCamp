class: CommandLineTool
id: ProbeMatch.cwl
inputs:
- id: in_max_dist
  doc: Give a max distance
  type: long
  inputBinding:
    prefix: --maxDist
- id: in_outfile
  doc: Write output to a file
  type: File
  inputBinding:
    prefix: --outFile
- id: in_primer_match
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_primer_list_vertical_line_primer_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: Write output to a file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- ProbeMatch
