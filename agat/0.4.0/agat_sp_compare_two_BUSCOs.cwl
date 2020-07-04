class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_compare_two_BUSCOs.pl.cwl
inputs:
- id: fone
  doc: 'STRING: Input busco folder1'
  type: boolean
  inputBinding:
    prefix: --f1
- id: f_two
  doc: 'STRING: Input busco folder2'
  type: boolean
  inputBinding:
    prefix: --f2
- id: verbose
  doc: 'Integer: For displaying extra information use -v 1. For activating the verbosity
    in the omniscient parser use -v 66. (not recommended)'
  type: string
  inputBinding:
    prefix: --verbose
- id: output
  doc: 'STRING: Output folder.'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_compare_two_BUSCOs.pl
