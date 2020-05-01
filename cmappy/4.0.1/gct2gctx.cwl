#!/usr/bin/env cwl-runner

baseCommand:
- gct2gctx
class: CommandLineTool
cwlVersion: v1.0
id: gct2gctx
inputs:
- doc: '.gct file that you would like to convert to .gctx (default: None)'
  id: filename
  inputBinding:
    prefix: -filename
  type: File
- doc: 'out path/name for output gctx file. Default is just to modify the extension
    (default: None)'
  id: output_file_path
  inputBinding:
    prefix: -output_filepath
  type: string
- doc: 'Whether to print a bunch of output. (default: False)'
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'Path to annotations file for rows (default: None)'
  id: row_an_not_path
  inputBinding:
    prefix: -row_annot_path
  type: string
- doc: 'Path to annotations file for columns (default: None)'
  id: col_an_not_path
  inputBinding:
    prefix: -col_annot_path
  type: string
