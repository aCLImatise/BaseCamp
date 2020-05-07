class: CommandLineTool
id: read_linker.cwl
inputs:
- id: o
  doc: Output file;
  type: File
  inputBinding:
    prefix: -o
- id: l
  doc: Minimum overlapping length (default 10);
  type: string
  inputBinding:
    prefix: -l
- id: e
  doc: Maximum number of errors (mismatches, default 1);
  type: string
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- read-linker
