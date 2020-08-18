class: CommandLineTool
id: ../../../pancake_seqdb.cwl
inputs:
- id: compression
  doc: INT    Compression level for output sequences. [1]
  type: boolean
  inputBinding:
    prefix: --compression
- id: buffer_size
  doc: FLOAT  Sequence buffer size in megabytes. Has to be >= 0.0. [1000]
  type: boolean
  inputBinding:
    prefix: --buffer-size
- id: block_size
  doc: FLOAT  Block size in megabases. Value 0 means one sequnece per block, value
    < 0 all sequences in one block. [1000]
  type: boolean
  inputBinding:
    prefix: --block-size
- id: split_blocks
  doc: Write seeds for each block into a separate file.
  type: boolean
  inputBinding:
    prefix: --split-blocks
- id: num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: pancake
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- seqdb
