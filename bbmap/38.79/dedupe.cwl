class: CommandLineTool
id: dedupe.sh.cwl
inputs:
- id: xmx20g
  doc: specify 20 gigs of RAM, and -Xmx200m will specify 200 megs.
  type: string
  inputBinding:
    prefix: -Xmx20g
outputs: []
cwlVersion: v1.1
baseCommand:
- dedupe.sh
