class: CommandLineTool
id: ErrorCorrection_connect.cwl
inputs:
- id: r
  doc: <int>   Trim x bp at head before use [0]
  type: boolean
  inputBinding:
    prefix: -r
- id: r
  doc: <int>   Trim x bp at tail before use [0]
  type: boolean
  inputBinding:
    prefix: -R
- id: l
  doc: <int>   Minimal align length allowed [8]
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: '<int>   Mean align length induced alignment (Default: No) [0]'
  type: boolean
  inputBinding:
    prefix: -m
- id: u
  doc: <int>   Maximal align length allowed [70]
  type: boolean
  inputBinding:
    prefix: -u
- id: c
  doc: <float> Identity cutoff of aligned region [0.9]
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: <float> Maximum simularity between best and second best result. [0.7]
  type: boolean
  inputBinding:
    prefix: -d
- id: b
  doc: <float> b threshold (Maximum %/100 of qual '0' base per alignment) [0.9]
  type: boolean
  inputBinding:
    prefix: -B
- id: t
  doc: '<int>   Pairs to connect (Default: All) [0]'
  type: boolean
  inputBinding:
    prefix: -t
- id: n
  doc: "<int>   Maximum 'N' allowance for filtering (Default: Do not filter) [-1]"
  type: boolean
  inputBinding:
    prefix: -N
- id: q
  doc: Output connecting quality [0]
  type: boolean
  inputBinding:
    prefix: -q
- id: x
  doc: '<int>   Quality ASCII base (Default: 33)'
  type: boolean
  inputBinding:
    prefix: -x
- id: x
  doc: '<int>   Quality start range offset (Default: 2)'
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- ErrorCorrection
- connect
