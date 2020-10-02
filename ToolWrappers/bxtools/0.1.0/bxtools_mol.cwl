class: CommandLineTool
id: bxtools_mol.cwl
inputs:
- id: in_verbose
  doc: Set verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bxtools
- mol
