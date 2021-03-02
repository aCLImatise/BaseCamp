class: CommandLineTool
id: contig2contig_seqfile.cwl
inputs:
- id: in_contig_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_contig_file
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
- contig2contig
- seqfile
