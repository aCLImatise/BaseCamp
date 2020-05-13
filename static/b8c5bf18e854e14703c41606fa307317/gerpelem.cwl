class: CommandLineTool
id: gerpelem.cwl
inputs:
- id: v
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: column scores filename
  type: File
  inputBinding:
    prefix: -f
- id: c
  doc: '[default = none]'
  type: string
  inputBinding:
    prefix: -c
- id: s
  doc: '[default = 0]'
  type: string
  inputBinding:
    prefix: -s
- id: x
  doc: suffix for naming output files [default = ".elems"]
  type: string
  inputBinding:
    prefix: -x
- id: w
  doc: suffix for naming exclusion region file [default = no output]
  type: string
  inputBinding:
    prefix: -w
- id: l
  doc: minimum element length [default = 4]
  type: long
  inputBinding:
    prefix: -l
- id: l
  doc: maximum element length [default = 2000]
  type: long
  inputBinding:
    prefix: -L
- id: t
  doc: inverse of the rounding tolerance [default = 10]
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: depth threshold for shallow columns, in substitutions per site [default = 0.5]
  type: string
  inputBinding:
    prefix: -d
- id: p
  doc: penalty coefficient for shallow columns, as fraction of the median neutral
    rate [default = 0.5]
  type: string
  inputBinding:
    prefix: -p
- id: b
  doc: number of border nucleotides for shallow regions [default = 2]
  type: string
  inputBinding:
    prefix: -b
- id: a
  doc: total number of allowed non-border shallow nucleotides per element [default
    = 10]
  type: string
  inputBinding:
    prefix: -a
- id: e
  doc: acceptable false positive rate [default = 0.05]
  type: string
  inputBinding:
    prefix: -e
- id: q
  doc: denominator for minimum candidate element score formula [default = 10.0]
  type: string
  inputBinding:
    prefix: -q
- id: r
  doc: exponent for minimum candidate element score formula [default = 1.15]
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- gerpelem
