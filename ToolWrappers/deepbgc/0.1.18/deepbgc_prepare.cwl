class: CommandLineTool
id: deepbgc_prepare.cwl
inputs:
- id: in_prodigal_meta_mode
  doc: Run Prodigal in '-p meta' mode to enable detecting genes in short contigs
  type: boolean
  inputBinding:
    prefix: --prodigal-meta-mode
- id: in_protein
  doc: Accept amino-acid protein sequences as input (experimental). Will treat each
    file as a single record with multiple proteins.
  type: boolean
  inputBinding:
    prefix: --protein
- id: in_output_gbk
  doc: Output GenBank file path
  type: File
  inputBinding:
    prefix: --output-gbk
- id: in_output_tsv
  doc: "Output TSV file path\n"
  type: File
  inputBinding:
    prefix: --output-tsv
- id: in_limit_to_record
  doc: ''
  type: string
  inputBinding:
    prefix: --limit-to-record
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_inputs
  doc: Input sequence file path(s) (FASTA/GenBank)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gbk
  doc: Output GenBank file path
  type: File
  outputBinding:
    glob: $(inputs.in_output_gbk)
- id: out_output_tsv
  doc: "Output TSV file path\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_tsv)
cwlVersion: v1.1
baseCommand:
- deepbgc
- prepare
