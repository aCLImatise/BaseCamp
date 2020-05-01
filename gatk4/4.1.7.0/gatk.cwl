#!/usr/bin/env cwl-runner

baseCommand:
- gatk
class: CommandLineTool
cwlVersion: v1.0
id: gatk
inputs:
- doc: PATH/TO/GATK/PROPERTIES/FILE
  id: g_atk_config_file
  inputBinding:
    prefix: --gatk-config-file
  type: boolean
