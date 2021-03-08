class: CommandLineTool
id: mmseqs_result2stats.cwl
inputs:
- id: in_stat
  doc: 'One of: linecount, mean, doolittle, charges, seqlen, firstline []'
  type: string?
  inputBinding:
    prefix: --stat
- id: in_tsv
  doc: Return output in TSV format [0]
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
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
- result2stats
