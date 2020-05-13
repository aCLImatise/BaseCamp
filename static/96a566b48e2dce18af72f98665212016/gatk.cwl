class: CommandLineTool
id: gatk.cwl
inputs:
- id: g_atk_config_file
  doc: PATH/TO/GATK/PROPERTIES/FILE
  type: boolean
  inputBinding:
    prefix: --gatk-config-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gatk
