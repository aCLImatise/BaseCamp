class: CommandLineTool
id: ../../../vawk.cwl
inputs:
- id: in_var
  doc: 'declare an external variable (e.g.: SIZE=10000)'
  type: long
  inputBinding:
    prefix: --var
- id: in_col
  doc: column of the INFO field [8]
  type: long
  inputBinding:
    prefix: --col
- id: in_header
  doc: print VCF header
  type: boolean
  inputBinding:
    prefix: --header
- id: in_debug
  doc: debugging level verbosity
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vawk
