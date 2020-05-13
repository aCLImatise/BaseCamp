class: CommandLineTool
id: readstats.py.cwl
inputs:
- id: info
  doc: print citation information
  type: boolean
  inputBinding:
    prefix: --info
- id: output
  doc: "output file for statistics; defaults to stdout. (default: <_io.TextIOWrapper\
    \ name='<stdout>' mode='w' encoding='UTF-8'>)"
  type: File
  inputBinding:
    prefix: --output
- id: csv
  doc: 'Use the CSV format for the statistics, including column headers. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --csv
outputs: []
cwlVersion: v1.1
baseCommand:
- readstats.py
