class: CommandLineTool
id: mmseqs_result2flat.cwl
inputs:
- id: in_use_fast_a_header
  doc: Use the id parsed from the fasta header as the index key instead of using incrementing
    numeric identifiers [0]
  type: boolean?
  inputBinding:
    prefix: --use-fasta-header
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
- result2flat
