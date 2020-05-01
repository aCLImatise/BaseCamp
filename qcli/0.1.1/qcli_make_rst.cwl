#!/usr/bin/env cwl-runner

baseCommand:
- qcli_make_rst
class: CommandLineTool
cwlVersion: v1.0
id: qcli_make_rst
inputs:
- doc: the input file(s) to generate rst files for [REQUIRED]
  id: input_fps
  inputBinding:
    prefix: --input_fps
  type: string
- doc: the directory where the resulting rst file(s) should be written [REQUIRED]
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: string
