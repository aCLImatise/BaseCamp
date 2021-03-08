class: CommandLineTool
id: mmseqs_combinepvalperset.cwl
inputs:
- id: in_alpha
  doc: Set alpha for combining p-values during aggregation [1.000]
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_aggregation_mode
  doc: 'Combined P-values computed from 0: multi-hit, 1: minimum of all P-values,
    2: product-of-P-values, 3: truncated product [0]'
  type: long?
  inputBinding:
    prefix: --aggregation-mode
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
- combinepvalperset
