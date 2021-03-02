class: CommandLineTool
id: airr_tools_merge.cwl
inputs:
- id: in_output_file_name
  doc: Output file name.
  type: File?
  inputBinding:
    prefix: -o
- id: in_drop
  doc: "If specified, drop fields that do not exist in all\ninput files. Otherwise,\
    \ include all columns in all\nfiles and fill missing data with empty strings."
  type: boolean?
  inputBinding:
    prefix: --drop
- id: in_list_airr_rearrangement
  doc: "A list of AIRR rearrangement files.\n"
  type: string[]
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: Output file name.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- airr-tools
- merge
