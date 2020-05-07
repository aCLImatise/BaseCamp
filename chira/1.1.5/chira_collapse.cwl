class: CommandLineTool
id: chira_collapse.py.cwl
inputs:
- id: i
  doc: ', --fastq          Input fastq file (default: None)'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ', --fasta          Output fasta file (default: None)'
  type: boolean
  inputBinding:
    prefix: -o
- id: umi_len
  doc: "Length of the UMI, if present.It is trimmed from the 5' end of each read and\
    \ appended to the tag id (default: 0)"
  type: string
  inputBinding:
    prefix: --umi_len
outputs: []
cwlVersion: v1.1
baseCommand:
- chira_collapse.py
