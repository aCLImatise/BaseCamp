class: CommandLineTool
id: chira_collapse.py.cwl
inputs:
- id: in_fast_q
  doc: 'Input fastq file (default: None)'
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_fast_a
  doc: 'Output fasta file (default: None)'
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_umi_len
  doc: "Length of the UMI, if present.It is trimmed from the\n5' end of each read\
    \ and appended to the tag id\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --umi_len
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_a
  doc: 'Output fasta file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_fast_a)
hints: []
cwlVersion: v1.1
baseCommand:
- chira_collapse.py
