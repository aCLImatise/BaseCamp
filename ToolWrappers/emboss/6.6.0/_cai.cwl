class: CommandLineTool
id: _cai.cwl
inputs:
- id: in_c_file
  doc: codon      [Eyeast_cai.cut] Codon usage table name
  type: boolean
  inputBinding:
    prefix: -cfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _cai
