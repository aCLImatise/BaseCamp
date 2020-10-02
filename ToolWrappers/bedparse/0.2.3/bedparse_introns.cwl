class: CommandLineTool
id: bedparse_introns.cwl
inputs:
- id: in_bed_file
  doc: Path to the BED file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- introns
