class: CommandLineTool
id: convertMetaMapsToMash.pl.cwl
inputs:
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_convert_meta_map_to_mash_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convertMetaMapsToMash.pl
