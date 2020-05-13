class: CommandLineTool
id: targetfinder.pl.cwl
inputs:
- id: s
  doc: Small RNA sequence (RNA or DNA, 5'->3')
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: Target sequence database file (FASTA-format)
  type: File
  inputBinding:
    prefix: -d
- id: q
  doc: Query sequence name (DEFAULT = 'query')
  type: string
  inputBinding:
    prefix: -q
- id: c
  doc: Prediction score cutoff value (DEFAULT = 4)
  type: double
  inputBinding:
    prefix: -c
- id: t
  doc: Threads for parallel Smith-Waterman searches (DEFAULT = 1)
  type: long
  inputBinding:
    prefix: -t
- id: p
  doc: "Output format for small RNA-target pairs (DEFAULT = 'classic') Available options:\
    \ 'classic' (Original TargetFinder base-pairing format) 'gff'     (Generic Feature\
    \ Format) 'json'    (JavaScript Object Notation) 'table'   (Tab-deliminated Format)"
  type: string
  inputBinding:
    prefix: -p
- id: r
  doc: Search reverse strand for targets?. Use this option if the database is genomic
    DNA.
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- targetfinder.pl
