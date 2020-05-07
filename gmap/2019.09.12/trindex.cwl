class: CommandLineTool
id: trindex.cwl
inputs:
- id: get_genome
  doc: --sequence --dump -d <genome> -m <genes IIT file> > <fasta file>
  type: string
  inputBinding:
    position: 0
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- trindex
