class: CommandLineTool
id: mmseqs_createseqfiledb.cwl
inputs:
- id: in_min_sequences
  doc: 1               minimum number of sequences a cluster may contain
  type: boolean?
  inputBinding:
    prefix: --min-sequences
- id: in_max_sequences
  doc: 2147483647      maximum number of sequences a cluster may contain
  type: boolean?
  inputBinding:
    prefix: --max-sequences
- id: in_hh_format
  doc: false           format entries to use with hhsuite (for singleton clusters)
  type: boolean?
  inputBinding:
    prefix: --hh-format
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- createseqfiledb
