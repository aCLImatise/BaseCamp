class: CommandLineTool
id: ptof.cwl
inputs:
- id: l
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: ': parameters given as normalized score units.'
  type: boolean
  inputBinding:
    prefix: -r
- id: b
  doc: '<value>: minimal initiation/termination score (default: -50 or -0.5 with option
    -r).'
  type: boolean
  inputBinding:
    prefix: -B
- id: f
  doc: '<value>: frameshift error penalty (default: -100 or -1.0 with option -r).'
  type: boolean
  inputBinding:
    prefix: -F
- id: i
  doc: '<value>: insert score multiplier (default: 1/3).'
  type: boolean
  inputBinding:
    prefix: -I
- id: x
  doc: '<value>: stop codon penalty (default: -100 or -1.0 with option -r).'
  type: boolean
  inputBinding:
    prefix: -X
- id: y
  doc: '<value>: intron opening penalty (default: -300 or -3.0 with option -r).'
  type: boolean
  inputBinding:
    prefix: -Y
- id: z
  doc: '<value>: intron extension penalty (default: -1 or -0.01 with option -r).'
  type: boolean
  inputBinding:
    prefix: -Z
outputs: []
cwlVersion: v1.1
baseCommand:
- ptof
