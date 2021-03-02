class: CommandLineTool
id: subset.cwl
inputs:
- id: in_in_path
  doc: 'file path to input GCT(x) file (default: None)'
  type: File?
  inputBinding:
    prefix: --in_path
- id: in_rid
  doc: "filepath to grp file or string array for including\nrows (default: None)"
  type: string[]
  inputBinding:
    prefix: --rid
- id: in_cid
  doc: "filepath to grp file or string array for including\ncols (default: None)"
  type: string[]
  inputBinding:
    prefix: --cid
- id: in_exclude_rid
  doc: "filepath to grp file or string array for excluding\nrows (default: None)"
  type: string[]
  inputBinding:
    prefix: --exclude_rid
- id: in_exclude_cid
  doc: "filepath to grp file or string array for excluding\ncols (default: None)"
  type: string[]
  inputBinding:
    prefix: --exclude_cid
- id: in_out_name
  doc: "what to name the output file (default:\nds_subsetted.gct)"
  type: File?
  inputBinding:
    prefix: --out_name
- id: in_out_type
  doc: 'whether to write output as GCT or GCTx (default: gct)'
  type: string?
  inputBinding:
    prefix: --out_type
- id: in_verbose
  doc: "whether to increase the # of messages reported\n(default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_name
  doc: "what to name the output file (default:\nds_subsetted.gct)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_name)
hints: []
cwlVersion: v1.1
baseCommand:
- subset
