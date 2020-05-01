#!/usr/bin/env cwl-runner

baseCommand:
- analyse
class: CommandLineTool
cwlVersion: v1.0
id: analyse
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
  id: input_a_x_vg_zip_path
  inputBinding:
    prefix: --input_A_xvg_zip_path
  type: string
- doc: ''
  id: input_b_x_vg_zip_path
  inputBinding:
    prefix: --input_B_xvg_zip_path
  type: string
- doc: ''
  id: output_result_path
  inputBinding:
    prefix: --output_result_path
  type: string
- doc: ''
  id: output_work_plot_path
  inputBinding:
    prefix: --output_work_plot_path
  type: string
