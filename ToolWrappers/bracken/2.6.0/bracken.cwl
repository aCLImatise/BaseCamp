class: CommandLineTool
id: bracken.cwl
inputs:
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_w
  doc: ''
  type: string?
  inputBinding:
    prefix: -w
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_my_db
  doc: location of Kraken database
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: Kraken REPORT file to use for abundance estimation
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: file name for Bracken default output
  type: string
  inputBinding:
    position: 2
- id: in_out_report
  doc: New Kraken REPORT output file with Bracken read estimates
  type: string
  inputBinding:
    position: 3
- id: in_read_len
  doc: 'read length to get all classifications for (default: 100)'
  type: string
  inputBinding:
    position: 4
- id: in_level
  doc: 'level to estimate abundance at [options: D,P,C,O,F,G,S] (default: S)'
  type: string
  inputBinding:
    position: 5
- id: in_threshold
  doc: 'number of reads required PRIOR to abundance estimation to perform reestimation
    (default: 0)'
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bracken
