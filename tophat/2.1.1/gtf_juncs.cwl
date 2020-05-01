#!/usr/bin/env cwl-runner

baseCommand:
- gtf_juncs
class: CommandLineTool
cwlVersion: v1.0
id: gtf_juncs
inputs:
- doc: ''
  id: transcripts_gtf
  inputBinding:
    position: 0
  type: string
