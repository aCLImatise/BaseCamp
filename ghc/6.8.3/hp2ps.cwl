class: CommandLineTool
id: ../../../hp2ps.cwl
inputs:
- id: sort_standard_deviation
  doc: sort by standard deviation
  type: boolean
  inputBinding:
    prefix: -d
- id: ef
  doc: '[in|mm|pt] produce Encapsulated PostScript f units wide (f > 2 inches)'
  type: boolean
  inputBinding:
    prefix: -ef
- id: produce_output_suitable
  doc: produce output suitable for GHOSTSCRIPT previever
  type: boolean
  inputBinding:
    prefix: -g
- id: sort_identifier_string
  doc: '[+|-] sort by identifier string (-i+ gives greatest on top) '
  type: boolean
  inputBinding:
    prefix: -i
- id: multipage_output_key
  doc: multi-page output (key separate from graph)
  type: boolean
  inputBinding:
    prefix: -M
- id: mn
  doc: maximum of n bands (default & max 20)
  type: string
  inputBinding:
    prefix: -mn
- id: m_zero
  doc: the band limit altogether
  type: string
  inputBinding:
    prefix: -m0
- id: use_previous_shading
  doc: use previous scaling, shading and ordering
  type: boolean
  inputBinding:
    prefix: -p
- id: use_small_box
  doc: use small title box
  type: boolean
  inputBinding:
    prefix: -s
- id: tf
  doc: trace bands which sum below f% (default 1%, max 5%)
  type: string
  inputBinding:
    prefix: -tf
- id: traditional
  doc: traditional
  type: boolean
  inputBinding:
    prefix: -y
- id: colour_ouput
  doc: colour ouput
  type: boolean
  inputBinding:
    prefix: -c
- id: b
  doc: ''
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- hp2ps
