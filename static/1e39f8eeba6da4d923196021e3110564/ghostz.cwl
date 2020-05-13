class: CommandLineTool
id: ghostz.cwl
inputs:
- id: i
  doc: Protein sequences in FASTA format for a database
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: The name of the database
  type: string
  inputBinding:
    prefix: -o
- id: c
  doc: Clustering, T (enable) or F (disable) [T]
  type: string
  inputBinding:
    prefix: -C
- id: l
  doc: Chunk size of the database (bytes) [1073741824 (=1GB)]
  type: long
  inputBinding:
    prefix: -l
- id: l
  doc: Length of a subsequence for clustering [10]
  type: long
  inputBinding:
    prefix: -L
- id: s
  doc: The seed threshold [39]
  type: long
  inputBinding:
    prefix: -s
- id: i
  doc: Sequences in FASTA format
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
- id: l
  doc: Chunk size of the queries (bytes) [134217728 (=128MB)]
  type: long
  inputBinding:
    prefix: -l
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
- id: n
  doc: Minimum length of query[12]
  type: long
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- ghostz
