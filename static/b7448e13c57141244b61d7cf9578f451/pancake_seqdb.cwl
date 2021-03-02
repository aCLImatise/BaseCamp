class: CommandLineTool
id: pancake_seqdb.cwl
inputs:
- id: in_compression
  doc: INT    Compression level for output sequences. [1]
  type: boolean?
  inputBinding:
    prefix: --compression
- id: in_buffer_size
  doc: FLOAT  Sequence buffer size in megabytes. Has to be >= 0.0. [1000]
  type: boolean?
  inputBinding:
    prefix: --buffer-size
- id: in_block_size
  doc: "FLOAT  Block size in megabases. Value 0 means one sequnece per block, value\
    \ < 0 all sequences in\none block. [1000]"
  type: boolean?
  inputBinding:
    prefix: --block-size
- id: in_split_blocks
  doc: Write seeds for each block into a separate file.
  type: boolean?
  inputBinding:
    prefix: --split-blocks
- id: in_num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_prefix
  doc: STR    The prefix of the DB files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- pancake
- seqdb
