class: CommandLineTool
id: phyluce_genetrees_locus_stats.cwl
inputs:
- id: config
  doc: The gene tree configuration file
  type: string
  inputBinding:
    prefix: --config
- id: alignments
  doc: Alignment files to process
  type: string
  inputBinding:
    prefix: --alignments
- id: input_format
  doc: The input alignment format.
  type: string
  inputBinding:
    prefix: --input-format
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
- id: cores
  doc: Process alignments in parallel using --cores for alignment. This is the number
    of PHYSICAL CPUs.
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_locus_stats
