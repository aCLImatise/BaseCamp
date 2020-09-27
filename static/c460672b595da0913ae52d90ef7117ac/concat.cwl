class: CommandLineTool
id: concat.cwl
inputs:
- id: in_file_wildcard
  doc: "wildcard specifying where files should be found (make\nsure to surround in\
    \ quotes if calling from command\nline!) (default: None)"
  type: File
  inputBinding:
    prefix: --file_wildcard
- id: in_concat_direction
  doc: 'which direction to concatenate (default: None)'
  type: string
  inputBinding:
    prefix: --concat_direction
- id: in_input_file_paths
  doc: "full paths to gct(x) files to be concatenated\n(default: None)"
  type: File[]
  inputBinding:
    prefix: --input_filepaths
- id: in_out_type
  doc: "whether to save output as a gct or gctx (default:\ngctx)"
  type: string
  inputBinding:
    prefix: --out_type
- id: in_out_name
  doc: 'what to name the output file (default: concated.gctx)'
  type: File
  inputBinding:
    prefix: --out_name
- id: in_fields_to_remove
  doc: "fields to remove from the common metadata (default:\n[])"
  type: string[]
  inputBinding:
    prefix: --fields_to_remove
- id: in_remove_all_metadata_fields
  doc: "remove all metadata fields during operation (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --remove_all_metadata_fields
- id: in_reset_ids
  doc: "whether to reset ids (use this flag if ids are not\nunique) (default: False)"
  type: boolean
  inputBinding:
    prefix: --reset_ids
- id: in_data_null
  doc: "how to represent missing values in the data (default:\nNaN)"
  type: string
  inputBinding:
    prefix: -data_null
- id: in_metadata_null
  doc: "how to represent missing values in the metadata\n(default: -666)"
  type: long
  inputBinding:
    prefix: -metadata_null
- id: in_filler_null
  doc: "what value to use for filling the top-left filler\nblock if output is a .gct\
    \ (default: -666)"
  type: long
  inputBinding:
    prefix: -filler_null
- id: in_verbose
  doc: 'whether to print a bunch of output (default: False)'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_error_report_output_file
  doc: "destination file for writing out error report -\ncurrently information about\
    \ inconsistent metadata\nfields in the common dimension of the concat operation\n\
    (default: None)\n"
  type: File
  inputBinding:
    prefix: --error_report_output_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_name
  doc: 'what to name the output file (default: concated.gctx)'
  type: File
  outputBinding:
    glob: $(inputs.in_out_name)
- id: out_error_report_output_file
  doc: "destination file for writing out error report -\ncurrently information about\
    \ inconsistent metadata\nfields in the common dimension of the concat operation\n\
    (default: None)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_error_report_output_file)
cwlVersion: v1.1
baseCommand:
- concat
