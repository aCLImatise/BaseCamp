class: CommandLineTool
id: segway_layer.cwl
inputs:
- id: big_bed
  doc: specify bigBed output file
  type: File
  inputBinding:
    prefix: --bigBed
- id: mnemonic_file
  doc: specify tab-delimited input file with mnemonic replacement identifiers for
    segment labels
  type: File
  inputBinding:
    prefix: --mnemonic-file
- id: no_re_color
  doc: don't recolor labels
  type: boolean
  inputBinding:
    prefix: --no-recolor
- id: s
  doc: VALUE, --track-line-set=ATTR VALUE set ATTR to VALUE in track line
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- segway-layer
