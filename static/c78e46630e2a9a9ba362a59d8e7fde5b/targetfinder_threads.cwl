class: CommandLineTool
id: ../../../targetfinder_threads.pl.cwl
inputs:
- id: input_small_rna
  doc: Input small RNA sequences file (FASTA-format)
  type: File
  inputBinding:
    prefix: -f
- id: target_sequence_database
  doc: Target sequence database file (FASTA-format)
  type: File
  inputBinding:
    prefix: -d
- id: output_file_results
  doc: Output file. Stores collective results
  type: File
  inputBinding:
    prefix: -o
- id: prediction_score_value
  doc: Prediction score cutoff value (DEFAULT = 4)
  type: double
  inputBinding:
    prefix: -c
- id: number_use_default
  doc: Number of TargetFinder threads/CPUs to use (DEFAULT = 1)
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
- targetfinder_threads.pl
