class: CommandLineTool
id: upimapi.py.cwl
inputs:
- id: in_input
  doc: "Input filename - can be a list of IDs (one per line)\nor a BLAST TSV file\
    \ - if so, specify with the --blast\nparameter. If no file is given as input,\
    \ will read\nfrom command line input"
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: filename of output
  type: File?
  inputBinding:
    prefix: --output
- id: in_excel
  doc: Will produce output in EXCEL format (default is TSV)
  type: boolean?
  inputBinding:
    prefix: --excel
- id: in_annotation_columns
  doc: List of UniProt columns to obtain information from
  type: string?
  inputBinding:
    prefix: --annotation-columns
- id: in_annotation_databases
  doc: "List of databases to cross-check with UniProt\ninformation"
  type: string?
  inputBinding:
    prefix: --annotation-databases
- id: in_blast
  doc: If input file is in BLAST TSV format
  type: boolean?
  inputBinding:
    prefix: --blast
- id: in_full_id
  doc: "If IDs are in 'full' format: tr|XXX|XXX"
  type: boolean?
  inputBinding:
    prefix: --full-id
- id: in_fast_a
  doc: Output will be generated in FASTA format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_step
  doc: "How many IDs to submit per request to the API (default\nis 1000)"
  type: long?
  inputBinding:
    prefix: --step
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: filename of output
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- upimapi.py
