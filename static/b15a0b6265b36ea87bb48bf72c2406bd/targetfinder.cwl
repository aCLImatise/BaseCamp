class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/targetfinder.pl.cwl
inputs:
- id: small_rna_sequence
  doc: Small RNA sequence (RNA or DNA, 5'->3')
  type: string
  inputBinding:
    prefix: -s
- id: target_sequence_database
  doc: Target sequence database file (FASTA-format)
  type: File
  inputBinding:
    prefix: -d
- id: query_sequence_name
  doc: Query sequence name (DEFAULT = 'query')
  type: string
  inputBinding:
    prefix: -q
- id: prediction_score_value
  doc: Prediction score cutoff value (DEFAULT = 4)
  type: double
  inputBinding:
    prefix: -c
- id: threads_parallel_smithwaterman
  doc: Threads for parallel Smith-Waterman searches (DEFAULT = 1)
  type: long
  inputBinding:
    prefix: -t
- id: output_format_small
  doc: "Output format for small RNA-target pairs (DEFAULT = 'classic') Available options:\
    \ 'classic' (Original TargetFinder base-pairing format) 'gff'     (Generic Feature\
    \ Format) 'json'    (JavaScript Object Notation) 'table'   (Tab-deliminated Format)"
  type: string
  inputBinding:
    prefix: -p
- id: search_reverse_strand
  doc: Search reverse strand for targets?. Use this option if the database is genomic
    DNA.
  type: boolean
  inputBinding:
    prefix: -r
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- targetfinder.pl
