class: CommandLineTool
id: filter_contig_contigfile.cwl
inputs:
- id: id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_contig
- contigfile
