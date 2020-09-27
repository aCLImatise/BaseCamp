class: CommandLineTool
id: ghostz.cwl
inputs:
- id: in_protein_sequences_fasta
  doc: Protein sequences in FASTA format for a database
  type: string
  inputBinding:
    prefix: -i
- id: in_the_name_database
  doc: The name of the database
  type: string
  inputBinding:
    prefix: -o
- id: in_clustering_t_enable
  doc: Clustering, T (enable) or F (disable) [T]
  type: string
  inputBinding:
    prefix: -C
- id: in_chunk_size_database
  doc: Chunk size of the database (bytes) [1073741824 (=1GB)]
  type: long
  inputBinding:
    prefix: -l
- id: in_length_subsequence_clustering
  doc: Length of a subsequence for clustering [10]
  type: long
  inputBinding:
    prefix: -L
- id: in_the_seed_threshold
  doc: The seed threshold [39]
  type: long
  inputBinding:
    prefix: -s
- id: in_database_name_must
  doc: database name (must be formatted)
  type: string
  inputBinding:
    prefix: -d
- id: in_maximum_number_alignments
  doc: Maximum number of alignments for each subject [1]
  type: long
  inputBinding:
    prefix: -v
- id: in_maximum_number_output
  doc: Maximum number of the output for a query [10]
  type: long
  inputBinding:
    prefix: -b
- id: in_query_sequence_type
  doc: Query sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -q
- id: in_database_sequence_type
  doc: Database sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -t
- id: in_filter_query_sequence
  doc: Filter query sequence, T (enable) or F (disable) [T]
  type: string
  inputBinding:
    prefix: -F
- id: in_the_number_threads
  doc: The number of threads [1]
  type: long
  inputBinding:
    prefix: -a
- id: in_minimum_length_query
  doc: Minimum length of query[12]
  type: long
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ghostz
