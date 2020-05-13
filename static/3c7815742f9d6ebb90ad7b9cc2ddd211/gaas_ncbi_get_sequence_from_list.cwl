class: CommandLineTool
id: gaas_ncbi_get_sequence_from_list.pl.cwl
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
- id: q
  doc: Field separator, by default un-printable character are use as separator (\s).
    You can define the one you wnat with this option.
  type: boolean
  inputBinding:
    prefix: -q
- id: q
  doc: Quiet to avoid any print on STDOUT
  type: boolean
  inputBinding:
    prefix: -q
- id: outfile
  doc: The name of the output file. By default the output is the standard output
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_ncbi_get_sequence_from_list.pl
