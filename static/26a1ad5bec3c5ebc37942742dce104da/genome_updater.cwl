class: CommandLineTool
id: ../../../genome_updater.sh.cwl
inputs:
- id: print_debug_information
  doc: print debug information and exit
  type: string
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- genome_updater.sh
