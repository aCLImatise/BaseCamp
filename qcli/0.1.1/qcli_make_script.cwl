#!/usr/bin/env cwl-runner

baseCommand:
- qcli_make_script
class: CommandLineTool
cwlVersion: v1.0
id: qcli_make_script
inputs:
- doc: The output filepath. [REQUIRED]
  id: output_fp
  inputBinding:
    prefix: --output_fp
  type: string
