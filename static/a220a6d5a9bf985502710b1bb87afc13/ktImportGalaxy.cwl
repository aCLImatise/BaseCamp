class: CommandLineTool
id: ktImportGalaxy.cwl
inputs:
- id: tax_rep
  doc: Results from the "Fetch taxonomic representation" or "Find lowest diagnostic
    rank" tools in Galaxy. By default, separate datasets will be created for each
    input (see [-c]).
  type: string
  inputBinding:
    position: 0
- id: name
  doc: A name to show in the list of datasets in the Krona chart (if multiple input
    files are present and [-c] is not specified). By default, the basename of the
    file will be used. _________
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ktImportGalaxy
