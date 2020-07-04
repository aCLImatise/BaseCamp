class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ghostz.cwl
inputs:
- id: protein_sequences_fasta
  doc: Protein sequences in FASTA format for a database
  type: string
  inputBinding:
    prefix: -i
- id: the_name_database
  doc: The name of the database
  type: string
  inputBinding:
    prefix: -o
- id: clustering_t_enable
  doc: Clustering, T (enable) or F (disable) [T]
  type: string
  inputBinding:
    prefix: -C
- id: chunk_size_database
  doc: Chunk size of the database (bytes) [1073741824 (=1GB)]
  type: long
  inputBinding:
    prefix: -l
- id: length_subsequence_clustering
  doc: Length of a subsequence for clustering [10]
  type: long
  inputBinding:
    prefix: -L
- id: the_seed_threshold
  doc: The seed threshold [39]
  type: long
  inputBinding:
    prefix: -s
- id: database_name_must
  doc: database name (must be formatted)
  type: string
  inputBinding:
    prefix: -d
- id: maximum_number_alignments
  doc: Maximum number of alignments for each subject [1]
  type: long
  inputBinding:
    prefix: -v
- id: maximum_number_output
  doc: Maximum number of the output for a query [10]
  type: long
  inputBinding:
    prefix: -b
- id: query_sequence_type
  doc: Query sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -q
- id: database_sequence_type
  doc: Database sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -t
- id: filter_query_sequence
  doc: 'Filter query sequence, T (enable) or F (disable) [T] '
  type: string
  inputBinding:
    prefix: -F
- id: the_number_threads
  doc: The number of threads [1]
  type: long
  inputBinding:
    prefix: -a
- id: minimum_length_query
  doc: Minimum length of query[12]
  type: long
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- ghostz
