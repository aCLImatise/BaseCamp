#!/usr/bin/env cwl-runner

baseCommand:
- ktImportMGRAST
class: CommandLineTool
cwlVersion: v1.0
id: ktimportmgrast
inputs:
- doc: A table exported from MG-RAST. It can be from organism or functional analysis,
    but all tables being imported should be consistent. By default, separate datasets
    will be created for each input (see [-c]).
  id: mgr_ast_table
  inputBinding:
    position: 0
  type: string
- doc: A name to show in the list of datasets in the Krona chart (if multiple input
    files are present and [-c] is not specified). By default, the basename of the
    file will be used. _________
  id: name
  inputBinding:
    position: 1
  type: string
