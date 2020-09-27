class: CommandLineTool
id: npinv.cwl
inputs:
- id: in_output
  doc: '[String] file to write'
  type: boolean
  inputBinding:
    prefix: --output
- id: in_input
  doc: '[String] file to read'
  type: boolean
  inputBinding:
    prefix: --input
- id: in_region
  doc: "[String] Specify the region for running.\nSuch as chr9:1-1000 OR chr9 OR all\
    \ Default[all]"
  type: boolean
  inputBinding:
    prefix: --region
- id: in_minal_n
  doc: '[int] minimum size for Alignment & Inv. Default[500]'
  type: boolean
  inputBinding:
    prefix: --minAln
- id: in_ir_database
  doc: '[String] An inverted repeat file for the reference in bed format. Default[none]'
  type: boolean
  inputBinding:
    prefix: --IRdatabase
- id: in_min
  doc: '[int] minimum size of an inversion. Default[500]'
  type: boolean
  inputBinding:
    prefix: --min
- id: in_max
  doc: '[int] maximum size of an inversion. Default[10000]'
  type: boolean
  inputBinding:
    prefix: --max
- id: in_window
  doc: '[int] minimun window size (bp) to merge inversion breakpoints. Default[2000]'
  type: boolean
  inputBinding:
    prefix: --window
- id: in_threshold
  doc: '[int] minimum number of supporting reads for an inversion. Default[3]'
  type: boolean
  inputBinding:
    prefix: --threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- npinv
