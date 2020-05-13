class: CommandLineTool
id: phyluce_genetrees_generate_multilocus_bootstrap_count.cwl
inputs:
- id: alignments
  doc: The input directory containing alignments in phylip format
  type: string
  inputBinding:
    prefix: --alignments
- id: bootstrap_replicates
  doc: The file that will hold bootstrap replicates sampling
  type: string
  inputBinding:
    prefix: --bootstrap_replicates
- id: directory
  doc: Optional path to directory containing alignments. Defaults to alignment directory
    if not provided.
  type: Directory
  inputBinding:
    prefix: --directory
- id: bootstrap_counts
  doc: The CSV file that will hold bootstrap replicate counts for each locus
  type: string
  inputBinding:
    prefix: --bootstrap_counts
- id: boot_reps
  doc: The number of bootstrap replicates to run
  type: string
  inputBinding:
    prefix: --bootreps
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
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_generate_multilocus_bootstrap_count
