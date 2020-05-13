class: CommandLineTool
id: contig2contig_outcontigfile.cwl
inputs:
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contig_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_contig_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- contig2contig
- outcontigfile
