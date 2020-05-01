#!/usr/bin/env cwl-runner

baseCommand:
- gentop
class: CommandLineTool
cwlVersion: v1.0
id: gentop
inputs:
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: system
  inputBinding:
    prefix: --system
  type: string
- doc: ''
  id: step
  inputBinding:
    prefix: --step
  type: string
- doc: ''
  id: input_top_zip_path
  inputBinding:
    prefix: --input_top_zip_path
  type: string
- doc: ''
  id: output_top_zip_path
  inputBinding:
    prefix: --output_top_zip_path
  type: string
- doc: ''
  id: output_log_path
  inputBinding:
    prefix: --output_log_path
  type: string
