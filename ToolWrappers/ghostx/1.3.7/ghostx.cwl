class: CommandLineTool
id: ghostx.cwl
inputs:
- id: in_protein_sequences_fasta
  doc: Protein sequences in FASTA format for a database
  type: string?
  inputBinding:
    prefix: -i
- id: in_the_name_database
  doc: The name of database
  type: string?
  inputBinding:
    prefix: -o
- id: in_chunk_size_database
  doc: Chunk size of the database (bytes) [1073741824 (=1GB)]
  type: long?
  inputBinding:
    prefix: -l
- id: in_database_sequence_type
  doc: Database sequence type, p (protein) or d (dna) [p]
  type: string?
  inputBinding:
    prefix: -t
- id: in_database_name_formatted
  doc: database name (must be formatted)
  type: string?
  inputBinding:
    prefix: -d
- id: in_maximum_number_alignments
  doc: Maximum number of alignments for each subject [1]
  type: long?
  inputBinding:
    prefix: -v
- id: in_maximum_number_output
  doc: Maximum number of the output for a query [10]
  type: long?
  inputBinding:
    prefix: -b
- id: in_score_matrix_file
  doc: Score matrix file[BLOSUM62]
  type: File?
  inputBinding:
    prefix: -M
- id: in_open_gap_penalty
  doc: Open gap penalty [11]
  type: long?
  inputBinding:
    prefix: -G
- id: in_extend_gap_penalty
  doc: Extend gap penalty [1]
  type: long?
  inputBinding:
    prefix: -E
- id: in_lower_limit_score
  doc: Lower limit cutoff score for seed search [4]
  type: long?
  inputBinding:
    prefix: -s
- id: in_upper_limit_score
  doc: Upper limit cutoff score for seed search [30]
  type: long?
  inputBinding:
    prefix: -T
- id: in_maximum_length_alignments
  doc: Maximum length of alignments in seed search [10]
  type: long?
  inputBinding:
    prefix: -S
- id: in_query_sequence_type
  doc: Query sequence type, p (protein) or d (dna) [p]
  type: string?
  inputBinding:
    prefix: -q
- id: in_filter_query_sequence
  doc: Filter query sequence, T (enable) or F (disable) [T]
  type: string?
  inputBinding:
    prefix: -F
- id: in_the_number_threads
  doc: The number of threads [1]
  type: long?
  inputBinding:
    prefix: -a
- id: in_maximum_number_hits
  doc: Maximum number of hits [67108864]
  type: long?
  inputBinding:
    prefix: -L
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ghostx
