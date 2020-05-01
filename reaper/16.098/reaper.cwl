#!/usr/bin/env cwl-runner

baseCommand:
- reaper
class: CommandLineTool
cwlVersion: v1.0
id: reaper
inputs:
- doc: <int> minimum length required to count sub-alignment as match
  id: l
  inputBinding:
    position: 0
  type: string
- doc: <int> maximum allowed edit distance
  id: e
  inputBinding:
    position: 1
  type: string
- doc: <int> [optional, not active when set to 0] maximum allowed number of gaps
  id: g
  inputBinding:
    position: 2
  type: string
- doc: '<int> [optional, not active when set to 0] offset: o= 5  requires alignment
    to start in the first five bases of adaptor o=-5  requires alignment to end in
    the last five bases of adaptor'
  id: o
  inputBinding:
    position: 3
  type: string
- doc: read
  id: r
  inputBinding:
    position: 0
  type: string
- doc: read identifier
  id: i
  inputBinding:
    position: 1
  type: string
- doc: quality scores
  id: q
  inputBinding:
    position: 2
  type: string
- doc: discard field
  id: d
  inputBinding:
    position: 3
  type: string
