class: CommandLineTool
id: hypo.cwl
inputs:
- id: sr
  doc: '(Corresponding to NGS reads like Illumina reads) '
  type: string
  inputBinding:
    position: 0
- id: ccs
  doc: '(Corresponding to HiFi reads like PacBio CCS reads) '
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hypo
