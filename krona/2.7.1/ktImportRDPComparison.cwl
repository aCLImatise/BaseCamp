#!/usr/bin/env cwl-runner

baseCommand:
- ktImportRDPComparison
class: CommandLineTool
cwlVersion: v1.0
id: ktimportrdpcomparison
inputs:
- doc: RDP comparison result downloaded as text.
  id: rdp_comparison
  inputBinding:
    position: 0
  type: string
- doc: A name for each library to appear in the chart. The default is "Library [1/2]".
    _________
  id: name
  inputBinding:
    position: 1
  type: string
