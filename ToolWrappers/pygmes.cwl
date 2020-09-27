class: CommandLineTool
id: pygmes.cwl
inputs:
- id: in_input
  doc: "path to the fasta file, or in metagenome mode path to\nbin folder"
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Path to the output folder
  type: File
  inputBinding:
    prefix: --output
- id: in_db
  doc: Path to the diamond DB
  type: File
  inputBinding:
    prefix: --db
- id: in_no_clean
  doc: "GeneMark-ES needs clean fasta headers and will fail if\nyou dont proveide\
    \ them. Set this flag if you don't\nwant pygmes to clean your headers"
  type: boolean
  inputBinding:
    prefix: --noclean
- id: in_cleanup
  doc: Delete everything but the output files
  type: boolean
  inputBinding:
    prefix: --cleanup
- id: in_n_cores
  doc: Number of threads to use with GeneMark-ES and Diamond
  type: long
  inputBinding:
    prefix: --ncores
- id: in_meta
  doc: Run in metaegnomic mode
  type: boolean
  inputBinding:
    prefix: --meta
- id: in_quiet
  doc: Silcence most output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Debug and thus ignore safety
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to the output folder
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pygmes
