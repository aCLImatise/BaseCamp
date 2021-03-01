class: CommandLineTool
id: crisprtools_merge.cwl
inputs:
- id: in_output_file_
  doc: 'output file  [default: crisprtools_merged.crispr]'
  type: File?
  inputBinding:
    prefix: -o
- id: in_sanitise_names_contains
  doc: sanitise the names so that the resulting output file contains completely unique
    group IDs
  type: File?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_
  doc: 'output file  [default: crisprtools_merged.crispr]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_)
- id: out_sanitise_names_contains
  doc: sanitise the names so that the resulting output file contains completely unique
    group IDs
  type: File?
  outputBinding:
    glob: $(inputs.in_sanitise_names_contains)
hints: []
cwlVersion: v1.1
baseCommand:
- crisprtools
- merge
