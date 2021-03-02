class: CommandLineTool
id: msi_rename_columns.sh.cwl
inputs:
- id: in__metadata_file
  doc: '- metadata file*'
  type: File?
  inputBinding:
    prefix: -i
- id: in_e
  doc: '- should exist in the metadata_file [default: barcode_id]'
  type: string?
  inputBinding:
    prefix: -e
- id: in_n
  doc: '- should exist in the metadata_file [default: sample_id]'
  type: string?
  inputBinding:
    prefix: -N
- id: in__output_file
  doc: '-  output file'
  type: Directory?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: '-  output file'
  type: Directory?
  outputBinding:
    glob: $(inputs.in__output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msi:0.3.5--1
cwlVersion: v1.1
baseCommand:
- msi_rename_columns.sh
