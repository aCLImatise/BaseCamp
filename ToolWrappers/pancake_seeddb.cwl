class: CommandLineTool
id: pancake_seeddb.cwl
inputs:
- id: in_split_blocks
  doc: Write seeds for each block into a separate file.
  type: boolean
  inputBinding:
    prefix: --split-blocks
- id: in_km_er_size
  doc: INT   Kmer size for indexing. [30]
  type: boolean
  inputBinding:
    prefix: --kmer-size
- id: in_window
  doc: INT   Minimizer window size for indexing. [80]
  type: boolean
  inputBinding:
    prefix: --window
- id: in_space
  doc: INT   Seed spacing. [0]
  type: boolean
  inputBinding:
    prefix: --space
- id: in_use_hpc
  doc: Enable homopolymer compression.
  type: boolean
  inputBinding:
    prefix: --use-hpc
- id: in_max_hpc_len
  doc: INT   Maximum length of a homopolymer to compress. [10]
  type: boolean
  inputBinding:
    prefix: --max-hpc-len
- id: in_no_rc
  doc: Do not produce seeds from the reverse complement strand.
  type: boolean
  inputBinding:
    prefix: --no-rc
- id: in_num_threads
  doc: INT   Number of threads to use, 0 means autodetection. [0]
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: in_input_dot_seq_db
  doc: STR   Path to the SeqDB to process.
  type: string
  inputBinding:
    position: 0
- id: in_prefix
  doc: STR   The prefix of the output SeedDB files.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pancake
- seeddb
