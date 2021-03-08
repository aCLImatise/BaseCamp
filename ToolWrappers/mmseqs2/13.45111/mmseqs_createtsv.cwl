class: CommandLineTool
id: mmseqs_createtsv.cwl
inputs:
- id: in_first_seq_as_repr
  doc: Use the first sequence of the clustering result as representative sequence
    [0]
  type: boolean?
  inputBinding:
    prefix: --first-seq-as-repr
- id: in_target_column
  doc: Select a target column (default 1), 0 if no target id exists [1]
  type: long?
  inputBinding:
    prefix: --target-column
- id: in_full_header
  doc: Replace DB ID by its corresponding Full Header [0]
  type: boolean?
  inputBinding:
    prefix: --full-header
- id: in_idx_seq_src
  doc: '0: auto, 1: split/translated sequences, 2: input sequences [0]'
  type: long?
  inputBinding:
    prefix: --idx-seq-src
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
- id: in_db_output
  doc: Return a result DB instead of a text file [0]
  type: boolean?
  inputBinding:
    prefix: --db-output
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
- createtsv
