class: CommandLineTool
id: contig2contig_outcontigfile.cwl
inputs:
- id: in_contig_two_contig
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contig_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_contig_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- contig2contig
- outcontigfile
