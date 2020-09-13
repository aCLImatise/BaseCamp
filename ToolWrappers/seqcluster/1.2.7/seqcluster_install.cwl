class: CommandLineTool
id: ../../../seqcluster_install.cwl
inputs:
- id: in_tools
  doc: install tools
  type: string
  inputBinding:
    prefix: --tools
- id: in_data
  doc: path install data
  type: File
  inputBinding:
    prefix: --data
- id: in_upgrade
  doc: upgrade seqcluster
  type: boolean
  inputBinding:
    prefix: --upgrade
- id: in_genomes
  doc: ''
  type: string
  inputBinding:
    prefix: --genomes
- id: in_aligners
  doc: ''
  type: string
  inputBinding:
    prefix: --aligners
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqcluster_install
