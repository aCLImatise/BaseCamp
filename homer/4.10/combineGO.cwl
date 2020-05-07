class: CommandLineTool
id: combineGO.pl.cwl
inputs:
- id: f
  doc: (Filename to join enrichment values from)
  type: File
  inputBinding:
    prefix: -f
- id: d
  doc: '[directory2] ... (findMotifs.pl output directories to join)'
  type: Directory
  inputBinding:
    prefix: -d
- id: top
  doc: '<#> (Only keep top # terms per directory, default: keep all)'
  type: boolean
  inputBinding:
    prefix: -top
- id: column
  doc: '<#> (Column in files to join, default: 4)'
  type: boolean
  inputBinding:
    prefix: -column
- id: ratio
  doc: '(return log2 ratio target/background if using motifs/knownResults.txt) -pseudoFraction
    <#> (Default: 2%)'
  type: boolean
  inputBinding:
    prefix: -ratio
outputs: []
cwlVersion: v1.1
baseCommand:
- combineGO.pl
