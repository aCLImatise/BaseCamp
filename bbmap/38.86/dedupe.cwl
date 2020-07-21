class: CommandLineTool
id: ../../../dedupe.sh.cwl
inputs:
- id: x_mx_two_zero_g
  doc: specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.
  type: string
  inputBinding:
    prefix: -Xmx20g
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dedupe.sh
