class: CommandLineTool
id: get_seqs_from_list.py.cwl
inputs:
- id: fast_a_filename
  doc: Input fasta/fastq filename to extract sequences from
  type: string
  inputBinding:
    position: 0
- id: list_filename
  doc: List of sequence IDs to extract
  type: string
  inputBinding:
    position: 1
- id: partial
  doc: OK if seq IDs only match the beginning
  type: boolean
  inputBinding:
    prefix: --partial
- id: exclude
  doc: Output sequences NOT in the list, default OFF
  type: boolean
  inputBinding:
    prefix: --exclude
outputs: []
cwlVersion: v1.1
baseCommand:
- get_seqs_from_list.py
