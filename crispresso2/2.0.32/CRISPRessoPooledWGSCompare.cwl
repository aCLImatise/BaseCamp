#!/usr/bin/env cwl-runner

baseCommand:
- CRISPRessoPooledWGSCompare
class: CommandLineTool
cwlVersion: v1.0
id: crispressopooledwgscompare
inputs:
- doc: First output folder with CRISPRessoPooled or CRISPRessoWGS analysis
  id: cris_presso_pooled_wgs_output_folder_1
  inputBinding:
    position: 0
  type: string
- doc: Second output folder with CRISPRessoPooled or CRISPRessoWGS analysis
  id: cris_presso_pooled_wgs_output_folder_2
  inputBinding:
    position: 1
  type: string
- doc: 'Number of processes to use for CRISPResso comparison (default: 1)'
  id: n_processes
  inputBinding:
    prefix: --n_processes
  type: string
- doc: 'Save also .png images additionally to .pdf files (default: False)'
  id: save_also_png
  inputBinding:
    prefix: --save_also_png
  type: boolean
- doc: 'Show debug messages (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
