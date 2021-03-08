class: CommandLineTool
id: mmseqs_createtaxdb.cwl
inputs:
- id: in_ncbi_tax_dump
  doc: NCBI tax dump directory. The tax dump can be downloaded here "ftp://ftp.ncbi.nih.gov/pub/taxonomy/taxdump.tar.gz"
    []
  type: Directory?
  inputBinding:
    prefix: --ncbi-tax-dump
- id: in_tax_mapping_file
  doc: File to map sequence identifier to taxonomical identifier []
  type: File?
  inputBinding:
    prefix: --tax-mapping-file
- id: in_tax_mapping_mode
  doc: 'Map taxonomy based on sequence database 0: .lookup file 1: .source file [0]'
  type: long?
  inputBinding:
    prefix: --tax-mapping-mode
- id: in_tax_db_mode
  doc: 'Create taxonomy database as: 0: .dmp flat files (human readable) 1: binary
    dump (faster readin) [1]'
  type: long?
  inputBinding:
    prefix: --tax-db-mode
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
- createtaxdb
