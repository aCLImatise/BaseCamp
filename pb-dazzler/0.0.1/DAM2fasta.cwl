class: CommandLineTool
id: DAM2fasta.cwl
inputs:
- id: u
  doc: ': Use upper case for DNA (default is lower case).'
  type: boolean
  inputBinding:
    prefix: -U
- id: w
  doc: ': Print -w bp per line (default is 80).'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- DAM2fasta
