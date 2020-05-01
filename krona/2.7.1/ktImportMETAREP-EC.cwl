#!/usr/bin/env cwl-runner

baseCommand:
- ktImportMETAREP-EC
class: CommandLineTool
cwlVersion: v1.0
id: ktimportmetarep-ec
inputs:
- doc: Unpacked METAREP data folder. By default, separate datasets will be created
    for each input (see [-c]).
  id: meta_rep_folder
  inputBinding:
    position: 0
  type: string
- doc: A name to show in the list of datasets in the Krona chart (if multiple input
    files are present and [-c] is not specified). By default, the basename of the
    file will be used. _________
  id: name
  inputBinding:
    position: 1
  type: string
