class: CommandLineTool
id: phyluce_genetrees_generate_multilocus_bootstrap_count.cwl
inputs:
- id: in_alignments
  doc: "The input directory containing alignments in phylip\nformat"
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_bootstrap_replicates
  doc: The file that will hold bootstrap replicates sampling
  type: File
  inputBinding:
    prefix: --bootstrap_replicates
- id: in_directory
  doc: "Optional path to directory containing alignments.\nDefaults to alignment directory\
    \ if not provided."
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_bootstrap_counts
  doc: "The CSV file that will hold bootstrap replicate counts\nfor each locus"
  type: File
  inputBinding:
    prefix: --bootstrap_counts
- id: in_boot_reps
  doc: The number of bootstrap replicates to run
  type: long
  inputBinding:
    prefix: --bootreps
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_generate_multilocus_bootstrap_count
