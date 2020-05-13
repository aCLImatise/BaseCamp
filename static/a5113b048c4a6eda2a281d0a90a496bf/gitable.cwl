class: CommandLineTool
id: gitable.sh.cwl
inputs:
- id: xmx20g
  doc: specify 20 gigs of RAM.  The max is typically 85% of physical memory.
  type: string
  inputBinding:
    prefix: -Xmx20g
outputs: []
cwlVersion: v1.1
baseCommand:
- gitable.sh
