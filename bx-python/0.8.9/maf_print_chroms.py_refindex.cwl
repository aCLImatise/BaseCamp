class: CommandLineTool
id: ../../../maf_print_chroms.py_refindex.cwl
inputs:
- id: in_program_dot
  doc: 'usage: /usr/local/bin/maf_print_chroms.py refindex [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_print_chroms.py
- refindex
