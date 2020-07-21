class: CommandLineTool
id: ../../../gaas_ncbi_get_sequence_from_list.pl.cwl
inputs:
- id: line
  doc: Integer, number of line to avoid. Allow to avoid headers.
  type: boolean
  inputBinding:
    prefix: --line
- id: col
  doc: column containing the ID. By default the first column is considered.
  type: boolean
  inputBinding:
    prefix: --col
- id: outfile
  doc: The name of the output file. By default the output is the standard output
  type: string
  inputBinding:
    prefix: --outfile
- id: list
  doc: ''
  type: File
  inputBinding:
    prefix: --list
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_ncbi_get_sequence_from_list.pl
