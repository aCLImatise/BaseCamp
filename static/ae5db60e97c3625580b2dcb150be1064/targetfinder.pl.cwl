class: CommandLineTool
id: targetfinder.pl.cwl
inputs:
- id: in_small_rna_sequence
  doc: Small RNA sequence (RNA or DNA, 5'->3')
  type: long?
  inputBinding:
    prefix: -s
- id: in_target_sequence_database
  doc: Target sequence database file (FASTA-format)
  type: File?
  inputBinding:
    prefix: -d
- id: in_query_sequence_name
  doc: Query sequence name (DEFAULT = 'query')
  type: string?
  inputBinding:
    prefix: -q
- id: in_prediction_score_value
  doc: Prediction score cutoff value (DEFAULT = 4)
  type: double?
  inputBinding:
    prefix: -c
- id: in_threads_parallel_smithwaterman
  doc: Threads for parallel Smith-Waterman searches (DEFAULT = 1)
  type: long?
  inputBinding:
    prefix: -t
- id: in_output_format_format
  doc: "Output format for small RNA-target pairs (DEFAULT = 'classic')\nAvailable\
    \ options: 'classic' (Original TargetFinder base-pairing format)\n'gff'     (Generic\
    \ Feature Format)\n'json'    (JavaScript Object Notation)\n'table'   (Tab-deliminated\
    \ Format)"
  type: string?
  inputBinding:
    prefix: -p
- id: in_search_reverse_strand
  doc: Search reverse strand for targets?. Use this option if the database is genomic
    DNA.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- targetfinder.pl
