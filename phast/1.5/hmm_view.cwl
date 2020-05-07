class: CommandLineTool
id: hmm_view.cwl
inputs:
- id: k
  doc: 'Assume a separate version of each state for each of  <nrcats> rate categories. '
  type: string
  inputBinding:
    prefix: -k
- id: i
  doc: Assume use of indel model for specified category names.
  type: string
  inputBinding:
    prefix: -i
- id: t
  doc: (Required with -i) Tree topology to assume for indel model (.nh file).
  type: string
  inputBinding:
    prefix: -t
- id: c
  doc: Show only the states corresponding to the specified category names.
  type: string
  inputBinding:
    prefix: -C
- id: r
  doc: Reflect the HMM about the specified 'pivot' categories. (Not yet implemented.)
  type: string
  inputBinding:
    prefix: -R
- id: x
  doc: Don't show unconnected states.
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- hmm_view
