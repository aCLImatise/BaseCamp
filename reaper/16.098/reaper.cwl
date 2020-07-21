class: CommandLineTool
id: ../../../reaper.cwl
inputs:
- id: int_minimum_length
  doc: <int> minimum length required to count sub-alignment as match
  type: string
  inputBinding:
    position: 0
- id: int_maximum_allowed_distance
  doc: <int> maximum allowed edit distance
  type: string
  inputBinding:
    position: 1
- id: int_maximum_allowed_number
  doc: <int> [optional, not active when set to 0] maximum allowed number of gaps
  type: string
  inputBinding:
    position: 2
- id: int_offset_o
  doc: '<int> [optional, not active when set to 0] offset: o= 5  requires alignment
    to start in the first five bases of adaptor o=-5  requires alignment to end in
    the last five bases of adaptor'
  type: string
  inputBinding:
    position: 3
- id: read
  doc: read
  type: string
  inputBinding:
    position: 0
- id: read_identifier
  doc: read identifier
  type: string
  inputBinding:
    position: 1
- id: quality_scores
  doc: quality scores
  type: string
  inputBinding:
    position: 2
- id: discard_field
  doc: discard field
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- reaper
