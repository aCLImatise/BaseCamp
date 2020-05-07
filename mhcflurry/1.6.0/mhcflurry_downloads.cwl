class: CommandLineTool
id: mhcflurry_downloads.cwl
inputs:
- id: quiet
  doc: Output less
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Output more
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-downloads
