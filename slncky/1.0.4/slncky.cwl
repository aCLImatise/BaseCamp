#!/usr/bin/env cwl-runner

baseCommand:
- slncky
class: CommandLineTool
cwlVersion: v1.0
id: slncky
inputs:
- doc: bed12 file of transcripts
  id: bed_file
  inputBinding:
    position: 0
  type: string
- doc: assembly
  id: assembly
  inputBinding:
    position: 1
  type: string
- doc: out_prefix
  id: out_prefix
  inputBinding:
    position: 2
  type: string
- doc: flag for if you want slncky to create a website visualizing results
  id: web
  inputBinding:
    prefix: --web
  type: boolean
