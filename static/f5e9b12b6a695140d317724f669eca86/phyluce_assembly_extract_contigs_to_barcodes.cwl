class: CommandLineTool
id: phyluce_assembly_extract_contigs_to_barcodes.cwl
inputs:
- id: contigs
  doc: The directory containing the assembled contigs.
  type: string
  inputBinding:
    prefix: --contigs
- id: config
  doc: A config file containing the contigs to extract.
  type: string
  inputBinding:
    prefix: --config
- id: output
  doc: The output FASTA file to create
  type: string
  inputBinding:
    prefix: --output
- id: verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_extract_contigs_to_barcodes
