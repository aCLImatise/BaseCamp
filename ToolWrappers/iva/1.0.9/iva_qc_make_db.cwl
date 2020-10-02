class: CommandLineTool
id: iva_qc_make_db.cwl
inputs:
- id: in_add_to_ref
  doc: "Filename of Genbank IDs or GI numbers to be added to\ndatabase. Format is:\
    \ whitespace separated list of GI\nnumbers on each line. One line defines one\
    \ genome\n(e.g. flu is 8 segments, so put 8 GI numbers on one\nline for one flu\
    \ reference)"
  type: File
  inputBinding:
    prefix: --add_to_ref
- id: in_skip_viruses
  doc: "Do not run kraken-build --download-library viruses\nwhen building the database.\
    \ If this option used, then\n--add_to_ref must also be used"
  type: boolean
  inputBinding:
    prefix: --skip_viruses
- id: in_threads
  doc: Number of threads to use [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_minimizer_len
  doc: "Number to pass to kraken-build minimizer_len option\n[13]"
  type: long
  inputBinding:
    prefix: --minimizer_len
- id: in_max_db_size
  doc: Number to pass to kraken-build max_db_size option [3]
  type: long
  inputBinding:
    prefix: --max_db_size
- id: in_verbose
  doc: Be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_directory_name
  doc: Name of output directory
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- iva_qc_make_db
