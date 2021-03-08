class: CommandLineTool
id: mmseqs_summarizeheaders.cwl
inputs:
- id: in_header_type
  doc: 'Header Type: 1: Uniclust, 2: Metaclust [1]'
  type: long?
  inputBinding:
    prefix: --header-type
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
- id: in_summary_prefix
  doc: Set the cluster summary prefix [cl]
  type: string?
  inputBinding:
    prefix: --summary-prefix
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
- summarizeheaders
