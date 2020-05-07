class: CommandLineTool
id: subset.cwl
inputs:
- id: in_path
  doc: 'file path to input GCT(x) file (default: None)'
  type: string
  inputBinding:
    prefix: --in_path
- id: rid
  doc: 'filepath to grp file or string array for including rows (default: None)'
  type: string[]
  inputBinding:
    prefix: --rid
- id: cid
  doc: 'filepath to grp file or string array for including cols (default: None)'
  type: string[]
  inputBinding:
    prefix: --cid
- id: exclude_rid
  doc: 'filepath to grp file or string array for excluding rows (default: None)'
  type: string[]
  inputBinding:
    prefix: --exclude_rid
- id: exclude_cid
  doc: 'filepath to grp file or string array for excluding cols (default: None)'
  type: string[]
  inputBinding:
    prefix: --exclude_cid
- id: out_name
  doc: 'what to name the output file (default: ds_subsetted.gct)'
  type: string
  inputBinding:
    prefix: --out_name
- id: out_type
  doc: 'whether to write output as GCT or GCTx (default: gct)'
  type: string
  inputBinding:
    prefix: --out_type
- id: verbose
  doc: 'whether to increase the # of messages reported (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- subset
