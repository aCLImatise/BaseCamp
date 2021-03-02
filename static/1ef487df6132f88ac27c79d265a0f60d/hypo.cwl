class: CommandLineTool
id: hypo.cwl
inputs:
- id: in_sr
  doc: '(Corresponding to NGS reads like Illumina reads) '
  type: string
  inputBinding:
    position: 0
- id: in_ccs
  doc: '(Corresponding to HiFi reads like PacBio CCS reads) '
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
- hypo
