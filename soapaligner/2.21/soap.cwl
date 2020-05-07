class: CommandLineTool
id: soap.cwl
inputs:
- id: v
  doc: <int>   maximum number of mismatches allowed on a read. [5] bp
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: <int>   minimal alignment length (for soft clip) [255] bp
  type: boolean
  inputBinding:
    prefix: -s
- id: g
  doc: <int>   one continuous gap size allowed on a read. [0] bp
  type: boolean
  inputBinding:
    prefix: -g
- id: r
  doc: for long insert size of pair end reads RF. [none](means FR pair)
  type: boolean
  inputBinding:
    prefix: -R
- id: e
  doc: <int>   will not allow gap exist inside n-bp edge of a read, default=5
  type: boolean
  inputBinding:
    prefix: -e
- id: p
  doc: <int>   number of processors to use, [1]
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- soap
