class: CommandLineTool
id: mmseqs_convertmsa.cwl
inputs:
- id: in_identifier_field
  doc: 'Field from STOCKHOLM comments for choosing the MSA identifier: 0: ID, 1: AC.
    If the respective comment does not exist, the name of the first sequence will
    become the identifier [1]'
  type: long?
  inputBinding:
    prefix: --identifier-field
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
- convertmsa
