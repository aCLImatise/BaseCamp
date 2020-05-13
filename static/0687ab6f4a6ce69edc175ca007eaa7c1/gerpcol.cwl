class: CommandLineTool
id: gerpcol.cwl
inputs:
- id: v
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: t
  doc: evolutionary tree
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: alignment filename
  type: File
  inputBinding:
    prefix: -f
- id: a
  doc: alignment in mfa format [default = false]
  type: boolean
  inputBinding:
    prefix: -a
- id: e
  doc: name of reference sequence
  type: string
  inputBinding:
    prefix: -e
- id: j
  doc: project out reference sequence
  type: boolean
  inputBinding:
    prefix: -j
- id: r
  doc: Tr/Tv ratio [default = 2.0]
  type: string
  inputBinding:
    prefix: -r
- id: p
  doc: tolerance for rate estimation [default = 0.001]
  type: string
  inputBinding:
    prefix: -p
- id: z
  doc: start at position 0 [default = false]
  type: string
  inputBinding:
    prefix: -z
- id: n
  doc: tree neutral rate [default = compute from tree]
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: tree scaling factor [default = 1.0]
  type: string
  inputBinding:
    prefix: -s
- id: x
  doc: suffix for naming output files [default = ".rates"]
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- gerpcol
