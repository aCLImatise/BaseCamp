class: CommandLineTool
id: arrive2.cwl
inputs:
- id: lo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hi
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: del
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: d
  doc: Ignore 3' overlap degrees > <n>
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: Get read length info from file <fn>
  type: string
  inputBinding:
    prefix: -L
- id: m
  doc: Ignore reads shorter than <n> bp
  type: string
  inputBinding:
    prefix: -m
- id: r
  doc: -<n>  Use windows in the range <m> .. <n>  of reads
  type: string
  inputBinding:
    prefix: -r
- id: s
  doc: Fit by minimizing sum of squared errors instead of |error|
  type: boolean
  inputBinding:
    prefix: -s
- id: x
  doc: Fit by minimizing max |error| instead of sum of |error|
  type: boolean
  inputBinding:
    prefix: -x
- id: z
  doc: Ignore reads with no overlaps at all
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- arrive2
