class: CommandLineTool
id: chira_collapse.py.cwl
inputs:
- id: in__fastq_input
  doc: ', --fastq          Input fastq file (default: None)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__fasta_default
  doc: ', --fasta          Output fasta file (default: None)'
  type: File
  inputBinding:
    prefix: -o
- id: in_umi_len
  doc: "Length of the UMI, if present.It is trimmed from the\n5' end of each read\
    \ and appended to the tag id\n(default: 0)"
  type: long
  inputBinding:
    prefix: --umi_len
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__fasta_default
  doc: ', --fasta          Output fasta file (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in__fasta_default)
cwlVersion: v1.1
baseCommand:
- chira_collapse.py
