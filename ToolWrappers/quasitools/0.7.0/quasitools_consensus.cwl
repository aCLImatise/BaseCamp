class: CommandLineTool
id: quasitools_consensus.cwl
inputs:
- id: in_percentage
  doc: percentage to include base in mixture.
  type: long?
  inputBinding:
    prefix: --percentage
- id: in_id
  doc: "specify default FASTA sequence identifier to be\nused for sequences without\
    \ an RG tag."
  type: string?
  inputBinding:
    prefix: --id
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference
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
- quasitools
- consensus
