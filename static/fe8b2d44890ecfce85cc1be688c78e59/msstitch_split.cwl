class: CommandLineTool
id: ../../../msstitch_split.cwl
inputs:
- id: input_file_format
  doc: Input file of {} format
  type: string
  inputBinding:
    prefix: -i
- id: directory_to_output
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: output_file
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: split_col
  doc: Either a column number to split a PSM table on, or "TD", "bioset" for splitting
    on target/decoy or biological sample set columns (resulting from msstitch perco2psm
    or msstitch psmtable. First column is number 1.
  type: string
  inputBinding:
    prefix: --splitcol
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- split
