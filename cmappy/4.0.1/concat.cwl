#!/usr/bin/env cwl-runner

baseCommand:
- concat
class: CommandLineTool
cwlVersion: v1.0
id: concat
inputs:
- doc: 'which direction to concatenate (default: None)'
  id: concat_direction
  inputBinding:
    prefix: --concat_direction
  type: string
- doc: 'full paths to gct(x) files to be concatenated (default: None)'
  id: input_file_paths
  inputBinding:
    prefix: --input_filepaths
  type:
    items: string
    type: array
- doc: 'wildcard specifying where files should be found (make sure to surround in
    quotes if calling from command line!) (default: None)'
  id: file_wildcard
  inputBinding:
    prefix: --file_wildcard
  type: File
- doc: 'whether to save output as a gct or gctx (default: gctx)'
  id: out_type
  inputBinding:
    prefix: --out_type
  type: string
- doc: 'what to name the output file (default: concated.gctx)'
  id: out_name
  inputBinding:
    prefix: --out_name
  type: string
- doc: 'fields to remove from the common metadata (default: [])'
  id: fields_to_remove
  inputBinding:
    prefix: --fields_to_remove
  type:
    items: string
    type: array
- doc: 'remove all metadata fields during operation (default: False)'
  id: remove_all_metadata_fields
  inputBinding:
    prefix: --remove_all_metadata_fields
  type: boolean
- doc: 'whether to reset ids (use this flag if ids are not unique) (default: False)'
  id: reset_ids
  inputBinding:
    prefix: --reset_ids
  type: boolean
- doc: 'how to represent missing values in the data (default: NaN)'
  id: data_null
  inputBinding:
    prefix: -data_null
  type: string
- doc: 'how to represent missing values in the metadata (default: -666)'
  id: metadata_null
  inputBinding:
    prefix: -metadata_null
  type: string
- doc: 'what value to use for filling the top-left filler block if output is a .gct
    (default: -666)'
  id: filler_null
  inputBinding:
    prefix: -filler_null
  type: string
- doc: 'whether to print a bunch of output (default: False)'
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'destination file for writing out error report - currently information about
    inconsistent metadata fields in the common dimension of the concat operation (default:
    None)'
  id: error_report_output_file
  inputBinding:
    prefix: --error_report_output_file
  type: string
