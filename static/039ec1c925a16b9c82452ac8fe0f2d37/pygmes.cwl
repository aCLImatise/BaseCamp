class: CommandLineTool
id: pygmes.cwl
inputs:
- id: input
  doc: path to the fasta file, or in metagenome mode path to bin folder
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Path to the output folder
  type: string
  inputBinding:
    prefix: --output
- id: db
  doc: Path to the diamond DB
  type: string
  inputBinding:
    prefix: --db
- id: no_clean
  doc: GeneMark-ES needs clean fasta headers and will fail if you dont proveide them.
    Set this flag if you don't want pygmes to clean your headers
  type: boolean
  inputBinding:
    prefix: --noclean
- id: n_cores
  doc: Number of threads to use with GeneMark-ES and Diamond
  type: string
  inputBinding:
    prefix: --ncores
- id: meta
  doc: Run in metaegnomic mode
  type: boolean
  inputBinding:
    prefix: --meta
- id: quiet
  doc: Silcence most output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: Debug and thus ignore safety
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- pygmes
