class: CommandLineTool
id: filter_bracken.out.py.cwl
inputs:
- id: input_file
  doc: Input bracken OUTPUT file. [NOT the report file]
  type: string
  inputBinding:
    prefix: --input-file
- id: output_file
  doc: Output bracken OUTPUT file.
  type: string
  inputBinding:
    prefix: --output-file
- id: include
  doc: '[T_INCLUDE [T_INCLUDE ...]] List of taxonomy IDs to include in output [space-
    delimited] - default=All'
  type: boolean
  inputBinding:
    prefix: --include
- id: exclude
  doc: '[T_EXCLUDE [T_EXCLUDE ...]] List of taxonomy IDs to exclude in output [space-
    delimited] - default=None'
  type: boolean
  inputBinding:
    prefix: --exclude
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_bracken.out.py
