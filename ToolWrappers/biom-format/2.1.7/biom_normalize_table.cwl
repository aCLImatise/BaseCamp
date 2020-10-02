class: CommandLineTool
id: biom_normalize_table.cwl
inputs:
- id: in_input_fp
  doc: The input BIOM table  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: in_output_fp
  doc: An output file-path
  type: File
  inputBinding:
    prefix: --output-fp
- id: in_relative_abund
  doc: convert table to relative abundance
  type: boolean
  inputBinding:
    prefix: --relative-abund
- id: in_presence_absence
  doc: convert table to presence/absence
  type: boolean
  inputBinding:
    prefix: --presence-absence
- id: in_axis
  doc: "[sample|observation]\nThe axis to normalize over"
  type: boolean
  inputBinding:
    prefix: --axis
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: An output file-path
  type: File
  outputBinding:
    glob: $(inputs.in_output_fp)
cwlVersion: v1.1
baseCommand:
- biom
- normalize-table
