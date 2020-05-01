#!/usr/bin/env cwl-runner

baseCommand:
- gmap_build
class: CommandLineTool
cwlVersion: v1.0
id: gmap_build
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: fast_a_files
  inputBinding:
    position: 1
  type: string
- doc: Maximum number of messages (warnings, contig reports) to report (default 50)
  id: n_messages
  inputBinding:
    prefix: --nmessages
  type: long
