class: CommandLineTool
id: iu_visualize_qual_dicts.cwl
inputs:
- id: in_prefix__prefixprefix
  doc: "PREFIX, --prefix FILE PREFIX\nPrefix for the output file(s)"
  type: File?
  inputBinding:
    prefix: -p
- id: in_title
  doc: Title to appear at the top of the figure
  type: string?
  inputBinding:
    prefix: --title
- id: in_split_tiles
  doc: "When set, quality curves will be shown separately for\neach tile\n"
  type: boolean?
  inputBinding:
    prefix: --split-tiles
- id: in_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix__prefixprefix
  doc: "PREFIX, --prefix FILE PREFIX\nPrefix for the output file(s)"
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix__prefixprefix)
hints: []
cwlVersion: v1.1
baseCommand:
- iu-visualize-qual-dicts
