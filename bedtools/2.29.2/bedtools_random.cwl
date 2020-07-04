class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedtools_random.cwl
inputs:
- id: length_generate_default
  doc: The length of the intervals to generate. - Default = 100. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -l
- id: number_generate_default
  doc: The number of intervals to generate. - Default = 1,000,000. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -n
- id: seed
  doc: Supply an integer seed for the shuffling. - By default, the seed is chosen
    automatically. - (INTEGER)
  type: boolean
  inputBinding:
    prefix: -seed
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- random
