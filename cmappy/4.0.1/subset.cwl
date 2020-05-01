#!/usr/bin/env cwl-runner

baseCommand:
- subset
class: CommandLineTool
cwlVersion: v1.0
id: subset
inputs:
- doc: 'file path to input GCT(x) file (default: None)'
  id: in_path
  inputBinding:
    prefix: --in_path
  type: string
- doc: 'filepath to grp file or string array for including rows (default: None)'
  id: rid
  inputBinding:
    prefix: --rid
  type:
    items: string
    type: array
- doc: 'filepath to grp file or string array for including cols (default: None)'
  id: cid
  inputBinding:
    prefix: --cid
  type:
    items: string
    type: array
- doc: 'filepath to grp file or string array for excluding rows (default: None)'
  id: exclude_rid
  inputBinding:
    prefix: --exclude_rid
  type:
    items: string
    type: array
- doc: 'filepath to grp file or string array for excluding cols (default: None)'
  id: exclude_cid
  inputBinding:
    prefix: --exclude_cid
  type:
    items: string
    type: array
- doc: 'what to name the output file (default: ds_subsetted.gct)'
  id: out_name
  inputBinding:
    prefix: --out_name
  type: string
- doc: 'whether to write output as GCT or GCTx (default: gct)'
  id: out_type
  inputBinding:
    prefix: --out_type
  type: string
- doc: 'whether to increase the # of messages reported (default: False)'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
