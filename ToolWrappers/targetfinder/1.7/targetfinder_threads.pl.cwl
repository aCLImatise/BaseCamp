class: CommandLineTool
id: targetfinder_threads.pl.cwl
inputs:
- id: in_input_small_rna
  doc: Input small RNA sequences file (FASTA-format)
  type: File
  inputBinding:
    prefix: -f
- id: in_target_sequence_database
  doc: Target sequence database file (FASTA-format)
  type: File
  inputBinding:
    prefix: -d
- id: in_output_file_stores
  doc: Output file. Stores collective results
  type: File
  inputBinding:
    prefix: -o
- id: in_prediction_score_cutoff
  doc: Prediction score cutoff value (DEFAULT = 4)
  type: double
  inputBinding:
    prefix: -c
- id: in_number_use_default
  doc: Number of TargetFinder threads/CPUs to use (DEFAULT = 1)
  type: long
  inputBinding:
    prefix: -t
- id: in_output_format_small
  doc: "Output format for small RNA-target pairs (DEFAULT = 'classic')\nAvailable\
    \ options: 'classic' (Original TargetFinder base-pairing format)\n'gff'     (Generic\
    \ Feature Format)\n'json'    (JavaScript Object Notation)\n'table'   (Tab-deliminated\
    \ Format)"
  type: string
  inputBinding:
    prefix: -p
- id: in_search_reverse_strand
  doc: Search reverse strand for targets?. Use this option if the database is genomic
    DNA.
  type: boolean
  inputBinding:
    prefix: -r
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_stores
  doc: Output file. Stores collective results
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_stores)
cwlVersion: v1.1
baseCommand:
- targetfinder_threads.pl
