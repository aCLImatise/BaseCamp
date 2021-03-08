class: CommandLineTool
id: mmseqs_createseqfiledb.cwl
inputs:
- id: in_min_sequences
  doc: Minimum number of sequences a cluster may contain [1]
  type: long?
  inputBinding:
    prefix: --min-sequences
- id: in_max_sequences
  doc: Maximum number of sequences a cluster may contain [2147483647]
  type: long?
  inputBinding:
    prefix: --max-sequences
- id: in_hh_format
  doc: Format entries to use with hhsuite (for singleton clusters) [0]
  type: boolean?
  inputBinding:
    prefix: --hh-format
- id: in_db_load_mode
  doc: 'Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]'
  type: long?
  inputBinding:
    prefix: --db-load-mode
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- createseqfiledb
