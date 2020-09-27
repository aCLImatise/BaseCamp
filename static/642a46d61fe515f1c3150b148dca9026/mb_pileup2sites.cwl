class: CommandLineTool
id: mb_pileup2sites.cwl
inputs:
- id: in_pile_up_file
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-pileup2sites
