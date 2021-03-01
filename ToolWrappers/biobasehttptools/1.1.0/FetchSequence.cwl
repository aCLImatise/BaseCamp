class: CommandLineTool
id: FetchSequence.cwl
inputs:
- id: in_geneid
  doc: Gene id
  type: long?
  inputBinding:
    prefix: --geneid
- id: in_gene_start
  doc: Gene start
  type: long?
  inputBinding:
    prefix: --genestart
- id: in_genes_top
  doc: Gene stop
  type: long?
  inputBinding:
    prefix: --genestop
- id: in_verbose
  doc: Loud verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- FetchSequence
