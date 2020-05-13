class: CommandLineTool
id: bedparse_introns.cwl
inputs:
- id: bed_file
  doc: Path to the BED file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- introns
