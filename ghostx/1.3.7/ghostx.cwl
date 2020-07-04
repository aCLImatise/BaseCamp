class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ghostx.cwl
inputs:
- id: protein_sequences_fasta
  doc: Protein sequences in FASTA format for a database
  type: string
  inputBinding:
    prefix: -i
- id: the_name_database
  doc: The name of database
  type: string
  inputBinding:
    prefix: -o
- id: chunk_size_database
  doc: Chunk size of the database (bytes) [1073741824 (=1GB)]
  type: long
  inputBinding:
    prefix: -l
- id: database_sequence_type
  doc: Database sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -t
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
- id: score_matrix_file
  doc: Score matrix file[BLOSUM62]
  type: string
  inputBinding:
    prefix: -M
- id: open_gap_penalty
  doc: Open gap penalty [11]
  type: long
  inputBinding:
    prefix: -G
- id: extend_gap_penalty
  doc: Extend gap penalty [1]
  type: long
  inputBinding:
    prefix: -E
- id: lower_limit_cutoff
  doc: Lower limit cutoff score for seed search [4]
  type: long
  inputBinding:
    prefix: -s
- id: upper_limit_cutoff
  doc: Upper limit cutoff score for seed search [30]
  type: long
  inputBinding:
    prefix: -T
- id: maximum_length_alignments
  doc: Maximum length of alignments in seed search [10]
  type: long
  inputBinding:
    prefix: -S
- id: query_sequence_type
  doc: Query sequence type, p (protein) or d (dna) [p]
  type: string
  inputBinding:
    prefix: -q
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
- id: maximum_number_hits
  doc: Maximum number of hits [67108864]
  type: long
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- ghostx
