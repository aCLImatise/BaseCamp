class: CommandLineTool
id: crisprtools_rm.cwl
inputs:
- id: in_comma_separated_list
  doc: a comma separated list of group IDs that you would like to remove
  type: string?
  inputBinding:
    prefix: -g
- id: in_output_file_name
  doc: output file name. Default behaviour changes file inplace
  type: File?
  inputBinding:
    prefix: -o
- id: in_remove_associated_files
  doc: Remove associated files
  type: boolean?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name. Default behaviour changes file inplace
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- crisprtools
- rm
