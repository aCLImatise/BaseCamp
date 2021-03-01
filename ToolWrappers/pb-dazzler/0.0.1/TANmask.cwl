class: CommandLineTool
id: TANmask.cwl
inputs:
- id: in_verbose_mode_output
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_shortest_tandem_interval
  doc: ': shortest tandem interval to report.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_use_name_tandem
  doc: ': use this name as for the tandem mask track'
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- TANmask
