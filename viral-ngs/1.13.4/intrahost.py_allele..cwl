class: CommandLineTool
id: ../../../intrahost.py_allele..cwl
inputs:
- id: in_intra_host_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- intrahost.py
- allele.
