class: CommandLineTool
id: ../../../bracken.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: my_db
  doc: location of Kraken database
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Kraken REPORT file to use for abundance estimation
  type: string
  inputBinding:
    position: 1
- id: output
  doc: file name for Bracken default output
  type: string
  inputBinding:
    position: 2
- id: out_report
  doc: New Kraken REPORT output file with Bracken read estimates
  type: string
  inputBinding:
    position: 3
- id: read_len
  doc: 'read length to get all classifications for (default: 100)'
  type: string
  inputBinding:
    position: 4
- id: level
  doc: 'level to estimate abundance at [options: D,P,C,O,F,G,S] (default: S)'
  type: string
  inputBinding:
    position: 5
- id: threshold
  doc: 'number of reads required PRIOR to abundance estimation to perform reestimation
    (default: 0)'
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- bracken
