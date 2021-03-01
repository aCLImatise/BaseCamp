class: CommandLineTool
id: pancake_dbfilter.cwl
inputs:
- id: in_sampling
  doc: 'STR    Select sampling type: none, linear, random. Valid choices: (none, linear,
    random). [none]'
  type: boolean?
  inputBinding:
    prefix: --sampling
- id: in_sample_bases
  doc: INT    Number of bases to sample. [0]
  type: boolean?
  inputBinding:
    prefix: --sample-bases
- id: in_block_size
  doc: "FLOAT  Block size in megabases. Value 0 means one sequnece per block, value\
    \ < 0 all sequences in\none block. [1000]"
  type: boolean?
  inputBinding:
    prefix: --block-size
- id: in_random_seed
  doc: INT    Random seed for sampling. [-1]
  type: boolean?
  inputBinding:
    prefix: --random-seed
- id: in_filter_list
  doc: STR    A text file containing headers of blacklisted sequences, one per line.
  type: boolean?
  inputBinding:
    prefix: --filter-list
- id: in_filter_type
  doc: 'STR    Select from: whitelist, blacklist, none. Valid choices: (none, whitelist,
    blacklist). [none]'
  type: boolean?
  inputBinding:
    prefix: --filter-type
- id: in_consolidate
  doc: Create the new data files in addition to filtering the DB.
  type: boolean?
  inputBinding:
    prefix: --consolidate
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
- id: in_in_prefix
  doc: STR    The prefix of the input DB files.
  type: string
  inputBinding:
    position: 0
- id: in_out_prefix
  doc: STR    The prefix of the output DB files.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pancake
- dbfilter
