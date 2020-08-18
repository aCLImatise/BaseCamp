class: CommandLineTool
id: ../../../contig2contig_contigfile.cwl
inputs:
- id: contig_two_contig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contig_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_contig_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- contig2contig
- contigfile
