class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/srf_list.cwl
inputs:
- id: count_only_list
  doc: Count only - do not list filenames
  type: boolean
  inputBinding:
    prefix: -c
- id: verbose_gives_data
  doc: Verbose - gives summary data per file too
  type: boolean
  inputBinding:
    prefix: -v
- id: list_long_format
  doc: 'List in long format. Lines contain: name position body-size header-size'
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_list
