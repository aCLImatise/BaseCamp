class: CommandLineTool
id: mmseqs_createdb.cwl
inputs:
- id: in_dbtype
  doc: 'Database type 0: auto, 1: amino acid 2: nucleotides [0]'
  type: long?
  inputBinding:
    prefix: --dbtype
- id: in_shuffle
  doc: Shuffle input database [1]
  type: boolean?
  inputBinding:
    prefix: --shuffle
- id: in_created_b_mode
  doc: 'Createdb mode 0: copy data, 1: soft link data and write new index (works only
    with single line fasta/q) [0]'
  type: long?
  inputBinding:
    prefix: --createdb-mode
- id: in_id_offset
  doc: Numeric ids in index file are offset by this value [0]
  type: long?
  inputBinding:
    prefix: --id-offset
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
- id: in_write_lookup
  doc: write .lookup file containing mapping from internal id, fasta id and file number
    [1]
  type: long?
  inputBinding:
    prefix: --write-lookup
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
- createdb
