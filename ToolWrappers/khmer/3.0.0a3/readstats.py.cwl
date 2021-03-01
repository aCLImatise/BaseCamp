class: CommandLineTool
id: readstats.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_output
  doc: "output file for statistics; defaults to stdout.\n(default: <_io.TextIOWrapper\
    \ name='<stdout>' mode='w'\nencoding='utf-8'>)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_csv
  doc: "Use the CSV format for the statistics, including\ncolumn headers. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_filenames
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file for statistics; defaults to stdout.\n(default: <_io.TextIOWrapper\
    \ name='<stdout>' mode='w'\nencoding='utf-8'>)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- readstats.py
