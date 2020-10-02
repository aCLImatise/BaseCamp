class: CommandLineTool
id: combineGO.pl.cwl
inputs:
- id: in_filename_join_values
  doc: (Filename to join enrichment values from)
  type: File
  inputBinding:
    prefix: -f
- id: in_findmotifspl_output_directories
  doc: '[directory2] ... (findMotifs.pl output directories to join)'
  type: Directory
  inputBinding:
    prefix: -d
- id: in_top
  doc: '<#> (Only keep top # terms per directory, default: keep all)'
  type: boolean
  inputBinding:
    prefix: -top
- id: in_column
  doc: '<#> (Column in files to join, default: 4)'
  type: boolean
  inputBinding:
    prefix: -column
- id: in_ratio
  doc: (return log2 ratio target/background if using motifs/knownResults.txt)
  type: boolean
  inputBinding:
    prefix: -ratio
- id: in_pseudo_fraction
  doc: '<#> (Default: 2%)'
  type: boolean
  inputBinding:
    prefix: -pseudoFraction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- combineGO.pl
