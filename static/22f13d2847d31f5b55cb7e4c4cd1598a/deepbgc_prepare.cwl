class: CommandLineTool
id: deepbgc_prepare.cwl
inputs:
- id: inputs
  doc: Input sequence file path(s) (FASTA/GenBank)
  type: string
  inputBinding:
    position: 0
- id: limit_to_record
  doc: Process only specific record ID. Can be provided multiple times
  type: string
  inputBinding:
    prefix: --limit-to-record
- id: prodigal_meta_mode
  doc: Run Prodigal in '-p meta' mode to enable detecting genes in short contigs
  type: boolean
  inputBinding:
    prefix: --prodigal-meta-mode
- id: protein
  doc: Accept amino-acid protein sequences as input (experimental). Will treat each
    file as a single record with multiple proteins.
  type: boolean
  inputBinding:
    prefix: --protein
- id: output_gbk
  doc: Output GenBank file path
  type: string
  inputBinding:
    prefix: --output-gbk
- id: output_tsv
  doc: Output TSV file path
  type: string
  inputBinding:
    prefix: --output-tsv
outputs: []
cwlVersion: v1.1
baseCommand:
- deepbgc
- prepare
