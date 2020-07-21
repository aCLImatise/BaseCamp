class: CommandLineTool
id: ../../../vawk.cwl
inputs:
- id: var
  doc: 'declare an external variable (e.g.: SIZE=10000)'
  type: string
  inputBinding:
    prefix: --var
- id: col
  doc: column of the INFO field [8]
  type: string
  inputBinding:
    prefix: --col
- id: header
  doc: print VCF header
  type: boolean
  inputBinding:
    prefix: --header
- id: debug
  doc: debugging level verbosity
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- vawk
