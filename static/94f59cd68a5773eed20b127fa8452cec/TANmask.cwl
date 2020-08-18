class: CommandLineTool
id: ../../../TANmask.cwl
inputs:
- id: verbose_mode_output
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: shortest_tandem_interval
  doc: ': shortest tandem interval to report.'
  type: boolean
  inputBinding:
    prefix: -l
- id: use_name_tandem
  doc: ': use this name as for the tandem mask track'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- TANmask
