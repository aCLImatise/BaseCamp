class: CommandLineTool
id: concat.cwl
inputs:
- id: concat_direction
  doc: 'which direction to concatenate (default: None)'
  type: string
  inputBinding:
    prefix: --concat_direction
- id: input_file_paths
  doc: 'full paths to gct(x) files to be concatenated (default: None)'
  type: string[]
  inputBinding:
    prefix: --input_filepaths
- id: file_wildcard
  doc: 'wildcard specifying where files should be found (make sure to surround in
    quotes if calling from command line!) (default: None)'
  type: File
  inputBinding:
    prefix: --file_wildcard
- id: out_type
  doc: 'whether to save output as a gct or gctx (default: gctx)'
  type: string
  inputBinding:
    prefix: --out_type
- id: out_name
  doc: 'what to name the output file (default: concated.gctx)'
  type: string
  inputBinding:
    prefix: --out_name
- id: fields_to_remove
  doc: 'fields to remove from the common metadata (default: [])'
  type: string[]
  inputBinding:
    prefix: --fields_to_remove
- id: remove_all_metadata_fields
  doc: 'remove all metadata fields during operation (default: False)'
  type: boolean
  inputBinding:
    prefix: --remove_all_metadata_fields
- id: reset_ids
  doc: 'whether to reset ids (use this flag if ids are not unique) (default: False)'
  type: boolean
  inputBinding:
    prefix: --reset_ids
- id: data_null
  doc: 'how to represent missing values in the data (default: NaN)'
  type: string
  inputBinding:
    prefix: -data_null
- id: metadata_null
  doc: 'how to represent missing values in the metadata (default: -666)'
  type: string
  inputBinding:
    prefix: -metadata_null
- id: filler_null
  doc: 'what value to use for filling the top-left filler block if output is a .gct
    (default: -666)'
  type: string
  inputBinding:
    prefix: -filler_null
- id: verbose
  doc: 'whether to print a bunch of output (default: False)'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: error_report_output_file
  doc: 'destination file for writing out error report - currently information about
    inconsistent metadata fields in the common dimension of the concat operation (default:
    None)'
  type: string
  inputBinding:
    prefix: --error_report_output_file
outputs: []
cwlVersion: v1.1
baseCommand:
- concat
