#!/usr/bin/env cwl-runner

baseCommand:
- FEELnc_pipeline.sh
class: CommandLineTool
cwlVersion: v1.0
id: feelnc_pipeline.sh
inputs:
- doc: ''
  id: candidate
  inputBinding:
    prefix: --candidate
  type: string
- doc: ''
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: ''
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: ''
  id: out_name
  inputBinding:
    prefix: --outname
  type: string
- doc: ''
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
