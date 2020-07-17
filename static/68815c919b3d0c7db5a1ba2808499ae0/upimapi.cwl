class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/upimapi.py.cwl
inputs:
- id: input
  doc: Input filename - can be a list of IDs (one per line) or a BLAST TSV file -
    if so, specify with the --blast parameter. If no file is given as input, will
    read from command line input
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: filename of output
  type: string
  inputBinding:
    prefix: --output
- id: excel
  doc: Will produce output in EXCEL format (default is TSV)
  type: boolean
  inputBinding:
    prefix: --excel
- id: annotation_columns
  doc: List of UniProt columns to obtain information from
  type: string
  inputBinding:
    prefix: --annotation-columns
- id: annotation_databases
  doc: List of databases to cross-check with UniProt information
  type: string
  inputBinding:
    prefix: --annotation-databases
- id: blast
  doc: If input file is in BLAST TSV format
  type: boolean
  inputBinding:
    prefix: --blast
- id: full_id
  doc: "If IDs are in 'full' format: tr|XXX|XXX"
  type: boolean
  inputBinding:
    prefix: --full-id
- id: fast_a
  doc: Output will be generated in FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: step
  doc: How many IDs to submit per request to the API (default is 1000)
  type: string
  inputBinding:
    prefix: --step
outputs: []
cwlVersion: v1.1
baseCommand:
- upimapi.py
