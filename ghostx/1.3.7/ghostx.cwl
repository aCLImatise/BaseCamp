class: CommandLineTool
id: ghostx.cwl
inputs:
- id: i
  doc: Protein sequences in FASTA format for a database
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: The name of database
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: Chunk size of the database (bytes) [1073741824 (=1GB)]
  type: long
  inputBinding:
    prefix: -l
- id: t
  doc: Database sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -t
- id: i
  doc: DNA or protein sequences in FASTA format for queries
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: database name (must be formatted)
  type: string
  inputBinding:
    prefix: -d
- id: v
  doc: Maximum number of alignments for each subject [1]
  type: long
  inputBinding:
    prefix: -v
- id: b
  doc: Maximum number of the output for a query [10]
  type: long
  inputBinding:
    prefix: -b
- id: m
  doc: Score matrix file[BLOSUM62]
  type: string
  inputBinding:
    prefix: -M
- id: g
  doc: Open gap penalty [11]
  type: long
  inputBinding:
    prefix: -G
- id: e
  doc: Extend gap penalty [1]
  type: long
  inputBinding:
    prefix: -E
- id: l
  doc: Maximun size of the candidates (Bytes) [134217728 (=128MB)]
  type: long
  inputBinding:
    prefix: -l
- id: s
  doc: Lower limit cutoff score for seed search [4]
  type: long
  inputBinding:
    prefix: -s
- id: t
  doc: Upper limit cutoff score for seed search [30]
  type: long
  inputBinding:
    prefix: -T
- id: s
  doc: Maximum length of alignments in seed search [10]
  type: long
  inputBinding:
    prefix: -S
- id: q
  doc: Query sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -q
- id: t
  doc: Database sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: 'Filter query sequence, T (enable) or F (disable) [T] '
  type: string
  inputBinding:
    prefix: -F
- id: a
  doc: The number of threads [1]
  type: long
  inputBinding:
    prefix: -a
- id: l
  doc: Maximum number of hits [67108864]
  type: long
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- ghostx
