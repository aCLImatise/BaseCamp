class: CommandLineTool
id: mmseqs_filtertaxseqdb.cwl
inputs:
- id: in_tax_on_list
  doc: Taxonomy ID, possibly multiple values separated by ',' []
  type: string?
  inputBinding:
    prefix: --taxon-list
- id: in_sub_db_mode
  doc: 'Subdb mode 0: copy data 1: soft link data and write index [0]'
  type: long?
  inputBinding:
    prefix: --subdb-mode
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
- filtertaxseqdb
