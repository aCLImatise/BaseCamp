class: CommandLineTool
id: gc_coverage_bias.cwl
inputs:
- id: r
  doc: 'a reference sequence file about FA format '
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: the designated chromosome id list file, one id per line, without settings,
    processing all the reference sequence
  type: string
  inputBinding:
    prefix: -c
- id: o
  doc: the prefix about output file
  type: string
  inputBinding:
    prefix: -o
- id: w
  doc: 'the window length[such as:100,200,300] '
  type: string
  inputBinding:
    prefix: -w
- id: gc_dump
  doc: 'output the gc ratio in the window length '
  type: boolean
  inputBinding:
    prefix: --gcdump
- id: dep_win_dump
  doc: 'output the avg depth in the window length '
  type: boolean
  inputBinding:
    prefix: --depwindump
outputs: []
cwlVersion: v1.1
baseCommand:
- gc_coverage_bias
