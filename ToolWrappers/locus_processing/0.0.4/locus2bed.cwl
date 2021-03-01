class: CommandLineTool
id: locus2bed.cwl
inputs:
- id: in_input
  doc: Path to input locus file
  type: File?
  inputBinding:
    prefix: --input
- id: in_input_directory
  doc: Path to directory containing locus files
  type: Directory?
  inputBinding:
    prefix: --input-directory
- id: in_prefix
  doc: Prefix to region names
  type: string?
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- locus2bed
