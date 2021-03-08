class: CommandLineTool
id: mmseqs_convertkb.cwl
inputs:
- id: in_mapping_file
  doc: Specify a file that translates the keys of a DB to new keys, TSV format []
  type: File?
  inputBinding:
    prefix: --mapping-file
- id: in_kb_columns
  doc: list of indices of UniprotKB columns to be extracted [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
  type: long?
  inputBinding:
    prefix: --kb-columns
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
- convertkb
