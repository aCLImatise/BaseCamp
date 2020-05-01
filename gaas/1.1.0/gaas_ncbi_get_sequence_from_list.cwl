#!/usr/bin/env cwl-runner

baseCommand:
- gaas_ncbi_get_sequence_from_list.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_ncbi_get_sequence_from_list.pl
inputs:
- doc: Integer, number of line to avoid. Allow to avoid headers.
  id: line
  inputBinding:
    prefix: --line
  type: boolean
- doc: column containing the ID. By default the first column is considered.
  id: col
  inputBinding:
    prefix: --col
  type: boolean
- doc: Field separator, by default un-printable character are use as separator (\s).
    You can define the one you wnat with this option.
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: Quiet to avoid any print on STDOUT
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: The name of the output file. By default the output is the standard output
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
