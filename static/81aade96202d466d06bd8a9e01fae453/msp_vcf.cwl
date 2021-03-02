class: CommandLineTool
id: msp_vcf.cwl
inputs:
- id: in_ploidy
  doc: "The ploidy level of samples\n"
  type: string?
  inputBinding:
    prefix: --ploidy
- id: in_history_file
  doc: The msprime history file in HDF5 format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- msp
- vcf
