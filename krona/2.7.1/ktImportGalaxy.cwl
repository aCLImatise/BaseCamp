#!/usr/bin/env cwl-runner

baseCommand:
- ktImportGalaxy
class: CommandLineTool
cwlVersion: v1.0
id: ktimportgalaxy
inputs:
- doc: Results from the "Fetch taxonomic representation" or "Find lowest diagnostic
    rank" tools in Galaxy. By default, separate datasets will be created for each
    input (see [-c]).
  id: tax_rep
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
