class: CommandLineTool
id: sort_denovo_primers.py.cwl
inputs:
- id: hits_file
  doc: Conserved Xmers file, output file from generate_primers_denovo.py module. [REQUIRED]
  type: string
  inputBinding:
    prefix: --hits_file
outputs: []
cwlVersion: v1.1
baseCommand:
- sort_denovo_primers.py
