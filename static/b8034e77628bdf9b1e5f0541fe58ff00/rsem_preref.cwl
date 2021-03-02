class: CommandLineTool
id: rsem_preref.cwl
inputs:
- id: in_polyalen_specify_length
  doc: ': polyALen: specify the length of polyA tail you want to pad. Default is 100'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_exceptionf_file_contains
  doc: ': exceptionF: file contains a list of exception reference ids. IDs starts
    from 1. Must set if polyAChoice = 2'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in__quiet
  doc: ': quiet'
  type: boolean?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsem-preref
