class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msstitch_concat.cwl
inputs:
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
- id: multiple_input_files
  doc: Multiple input files of {} format
  type: string[]
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- msstitch
- concat
