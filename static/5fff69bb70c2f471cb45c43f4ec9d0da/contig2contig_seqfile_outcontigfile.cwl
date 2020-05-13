class: CommandLineTool
id: contig2contig_seqfile_outcontigfile.cwl
inputs:
- id: contig_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_contig_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- contig2contig
- seqfile
- outcontigfile
