class: CommandLineTool
id: ppanini_press.cwl
inputs:
- id: gene_path
  doc: a directory path to ppanini_gene_caller outputs which includes txt, gff, and
    faa files for each sample.
  type: string
  inputBinding:
    prefix: --gene-path
- id: output
  doc: Path for outputs
  type: string
  inputBinding:
    prefix: --output
- id: resume
  doc: bypass commands if the output files exist
  type: boolean
  inputBinding:
    prefix: --resume
- id: threads
  doc: 'number of threads/processes [DEFAULT: 1]'
  type: string
  inputBinding:
    prefix: --threads
- id: scale
  doc: scale the abundance table
  type: string
  inputBinding:
    prefix: --scale
- id: memory
  doc: 'memory for -M option in CD-Hit '
  type: string
  inputBinding:
    prefix: --memory
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_press
