class: CommandLineTool
id: gappa_random_random_placements.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference_tree
  doc: REQUIRED File containing a reference tree in newick format.
  type: string
  inputBinding:
    prefix: --reference-tree
- id: pquery_count
  doc: =0 REQUIRED Number of pqueries to create.
  type: string
  inputBinding:
    prefix: --pquery-count
- id: out_dir
  doc: =.            Directory to write files to
  type: string
  inputBinding:
    prefix: --out-dir
- id: file_prefix
  doc: File prefix for output files
  type: string
  inputBinding:
    prefix: --file-prefix
- id: allow_file_overwriting
  doc: Allow to overwrite existing output files instead of aborting the command.
  type: boolean
  inputBinding:
    prefix: --allow-file-overwriting
- id: verbose
  doc: Produce more verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: =8            Number of threads to use for calculations.
  type: string
  inputBinding:
    prefix: --threads
- id: log_file
  doc: Write all output to a log file, in addition to standard output to the terminal.
  type: string
  inputBinding:
    prefix: --log-file
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- random
- random-placements
