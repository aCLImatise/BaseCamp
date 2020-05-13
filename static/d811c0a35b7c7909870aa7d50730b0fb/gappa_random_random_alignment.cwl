class: CommandLineTool
id: gappa_random_random_alignment.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_count
  doc: =0 REQUIRED Number of sequences to create.
  type: string
  inputBinding:
    prefix: --sequence-count
- id: sequence_length
  doc: =0 REQUIRED Length of the sequences to create.
  type: string
  inputBinding:
    prefix: --sequence-length
- id: characters
  doc: =-ACGT     Set of characters to use for the sequences.
  type: string
  inputBinding:
    prefix: --characters
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
- random-alignment
