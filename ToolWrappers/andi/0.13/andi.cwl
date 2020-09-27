class: CommandLineTool
id: andi.cwl
inputs:
- id: in_bootstrap
  doc: Print additional bootstrap matrices
  type: long
  inputBinding:
    prefix: --bootstrap
- id: in_file_of_filenames
  doc: Read additional filenames from FILE; one per line
  type: File
  inputBinding:
    prefix: --file-of-filenames
- id: in_join
  doc: Treat all sequences from one file as a single genome
  type: boolean
  inputBinding:
    prefix: --join
- id: in_low_memory
  doc: Use less memory at the cost of speed
  type: boolean
  inputBinding:
    prefix: --low-memory
- id: in_model
  doc: "Pick an evolutionary model of 'Raw', 'JC', 'Kimura'; default: JC"
  type: string
  inputBinding:
    prefix: --model
- id: in_significance_anchor_default
  doc: 'Significance of an anchor; default: 0.025'
  type: double
  inputBinding:
    prefix: -p
- id: in_progress
  doc: "Print a progress bar 'always', 'never', or 'auto'; default: auto"
  type: string
  inputBinding:
    prefix: --progress
- id: in_threads
  doc: Set the number of threads; by default, all processors are used
  type: long
  inputBinding:
    prefix: --threads
- id: in_truncate_names
  doc: names to ten characters
  type: string
  inputBinding:
    prefix: --truncate-names
- id: in_verbose
  doc: Prints additional information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- andi
