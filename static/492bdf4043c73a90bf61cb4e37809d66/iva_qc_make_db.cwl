class: CommandLineTool
id: iva_qc_make_db.cwl
inputs:
- id: directory_name
  doc: Name of output directory
  type: Directory
  inputBinding:
    position: 0
- id: add_to_ref
  doc: 'Filename of Genbank IDs or GI numbers to be added to database. Format is:
    whitespace separated list of GI numbers on each line. One line defines one genome
    (e.g. flu is 8 segments, so put 8 GI numbers on one line for one flu reference)'
  type: File
  inputBinding:
    prefix: --add_to_ref
- id: skip_viruses
  doc: Do not run kraken-build --download-library viruses when building the database.
    If this option used, then --add_to_ref must also be used
  type: boolean
  inputBinding:
    prefix: --skip_viruses
- id: threads
  doc: Number of threads to use [1]
  type: long
  inputBinding:
    prefix: --threads
- id: minimizer_len
  doc: Number to pass to kraken-build minimizer_len option [13]
  type: long
  inputBinding:
    prefix: --minimizer_len
- id: max_db_size
  doc: Number to pass to kraken-build max_db_size option [3]
  type: long
  inputBinding:
    prefix: --max_db_size
- id: verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- iva_qc_make_db
