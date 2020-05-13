class: CommandLineTool
id: proteinortho_grab_proteins.pl.cwl
inputs:
- id: to_files
  doc: print everything to files instead of stdout files are called OrthoGroup**.fasta
    for a proteinortho.tsv file
  type: boolean
  inputBinding:
    prefix: -tofiles
- id: e
  doc: enables regex matching otherwise the string is escaped (e.g. | -> \|)
  type: boolean
  inputBinding:
    prefix: -E
- id: exact
  doc: search patters are extended with a \b, that indicates end of word.
  type: boolean
  inputBinding:
    prefix: -exact
- id: source
  doc: adds the filename (FASTA1,...) to the found gene-name
  type: boolean
  inputBinding:
    prefix: -source
- id: f
  doc: "char delimiter for multiple identifier if QUERY is a string input (default:\
    \ ',')"
  type: string
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho_grab_proteins.pl
