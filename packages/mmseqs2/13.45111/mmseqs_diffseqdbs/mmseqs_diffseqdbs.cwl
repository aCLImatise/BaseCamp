class: CommandLineTool
id: mmseqs_diffseqdbs.cwl
inputs:
- id: in_use_seq_id
  doc: Sequence ID (Uniprot, GenBank, ...) is used for identifying matches between
    the old and the new DB [0]
  type: boolean?
  inputBinding:
    prefix: --use-seq-id
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
- diffseqdbs
