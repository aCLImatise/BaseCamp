class: CommandLineTool
id: nighthawk_split.cwl
inputs:
- id: in_split_type
  doc: "STR   Type of splitting to perform. Valid choices: (nfiles,\novlpiles, noverlaps).\
    \ [ovlpiles]"
  type: boolean
  inputBinding:
    prefix: --split-type
- id: in_limit
  doc: "INT   Number of files when split-type is 'nfiles', or\nnumber of piles when\
    \ split-type is 'ovlpiles'. [1000]"
  type: boolean
  inputBinding:
    prefix: --limit
- id: in_num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO,\nWARN, FATAL). [WARN]"
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_chunk_prefix
  doc: STR   Output M4 files.
  type: string
  inputBinding:
    position: 0
- id: in_input_do_tm_four
  doc: STR   Input M4/overlap file to split.
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nighthawk
- split
