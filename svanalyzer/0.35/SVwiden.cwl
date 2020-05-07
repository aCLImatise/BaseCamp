class: CommandLineTool
id: SVwiden.cwl
inputs:
- id: refname
  doc: 'Specify a string to be written as the reference name in the ##reference line
    of the VCF header.'
  type: string
  inputBinding:
    prefix: --refname
- id: noheader
  doc: Flag option to suppress printout of the VCF header.
  type: boolean
  inputBinding:
    prefix: --noheader
outputs: []
cwlVersion: v1.1
baseCommand:
- SVwiden
