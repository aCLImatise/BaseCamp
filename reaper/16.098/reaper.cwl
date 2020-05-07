class: CommandLineTool
id: reaper.cwl
inputs:
- id: l
  doc: <int> minimum length required to count sub-alignment as match
  type: string
  inputBinding:
    position: 0
- id: e
  doc: <int> maximum allowed edit distance
  type: string
  inputBinding:
    position: 1
- id: g
  doc: <int> [optional, not active when set to 0] maximum allowed number of gaps
  type: string
  inputBinding:
    position: 2
- id: o
  doc: '<int> [optional, not active when set to 0] offset: o= 5  requires alignment
    to start in the first five bases of adaptor o=-5  requires alignment to end in
    the last five bases of adaptor'
  type: string
  inputBinding:
    position: 3
- id: r
  doc: read
  type: string
  inputBinding:
    position: 0
- id: i
  doc: read identifier
  type: string
  inputBinding:
    position: 1
- id: q
  doc: quality scores
  type: string
  inputBinding:
    position: 2
- id: d
  doc: discard field
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- reaper
