class: CommandLineTool
id: phyluce_genetrees_run_raxml_multilocus_bootstraps.cwl
inputs:
- id: in_input
  doc: The input directory containing alignments in phylip
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output_directory_hold
  doc: The output directory to hold alignments
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_boot_reps
  doc: The number of bootstrap replicates to run
  type: long?
  inputBinding:
    prefix: --bootreps
- id: in_out_group
  doc: The outgroup to use
  type: string?
  inputBinding:
    prefix: --outgroup
- id: in_threads
  doc: "The number of RAxML threads to run (best to determine\nempirically)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_cores
  doc: The number of concurrent RAxML jobs to run
  type: long?
  inputBinding:
    prefix: --cores
- id: in_quiet
  doc: Suppress the CPU usage question
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbosity
  doc: The logging level to use.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File?
  inputBinding:
    prefix: --log-path
- id: in_var_9
  doc: '[--bootreps BOOTREPS]'
  type: string
  inputBinding:
    position: 0
- id: in_format
  doc: --best-trees BEST_TREES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_hold
  doc: The output directory to hold alignments
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_hold)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_run_raxml_multilocus_bootstraps
