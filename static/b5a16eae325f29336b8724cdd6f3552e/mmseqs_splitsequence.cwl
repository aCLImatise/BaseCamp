class: CommandLineTool
id: mmseqs_splitsequence.cwl
inputs:
- id: in_sequence_overlap
  doc: Overlap between sequences [300]
  type: long?
  inputBinding:
    prefix: --sequence-overlap
- id: in_sequence_split_mode
  doc: 'Sequence split mode 0: copy data, 1: soft link data and write new index, [1]'
  type: long?
  inputBinding:
    prefix: --sequence-split-mode
- id: in_headers_split_mode
  doc: 'Header split mode: 0: split position, 1: original header [0]'
  type: long?
  inputBinding:
    prefix: --headers-split-mode
- id: in_max_seq_len
  doc: Maximum sequence length [10000]
  type: long?
  inputBinding:
    prefix: --max-seq-len
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
- id: in_create_lookup
  doc: Create database lookup file (can be very large) [0]
  type: long?
  inputBinding:
    prefix: --create-lookup
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
- splitsequence
