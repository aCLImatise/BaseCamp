class: CommandLineTool
id: gappa_edit_accumulate.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: j_place_path
  doc: :PATH(existing)=[] ... REQUIRED List of jplace files or directories to process.
    For directories, only files with the extension .jplace are processed.
  type: string
  inputBinding:
    prefix: --jplace-path
- id: threshold
  doc: :FLOAT in [0.5 - 1]=0.95 Threshold of how much mass needs to be accumulated
    into a basal branch.
  type: double
  inputBinding:
    prefix: --threshold
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
- edit
- accumulate
