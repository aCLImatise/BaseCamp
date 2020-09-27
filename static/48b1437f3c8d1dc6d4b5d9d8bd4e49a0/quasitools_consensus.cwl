class: CommandLineTool
id: quasitools_consensus.cwl
inputs:
- id: in_percentage
  doc: "percentage to include base in mixture.\n-i, --id TEXT             specify\
    \ default FASTA sequence identifier to be\nused for sequences without an RG tag.\n\
    -o, --output FILENAME\n--help                    Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --percentage
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
- id: out_percentage
  doc: "percentage to include base in mixture.\n-i, --id TEXT             specify\
    \ default FASTA sequence identifier to be\nused for sequences without an RG tag.\n\
    -o, --output FILENAME\n--help                    Show this message and exit.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_percentage)
cwlVersion: v1.1
baseCommand:
- quasitools
- consensus
