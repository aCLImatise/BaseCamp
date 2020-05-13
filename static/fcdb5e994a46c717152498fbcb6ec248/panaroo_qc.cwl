class: CommandLineTool
id: panaroo_qc.cwl
inputs:
- id: threads
  doc: number of threads to use (default=1)
  type: string
  inputBinding:
    prefix: --threads
- id: graph_type
  doc: the type of graph to generate (default='all')
  type: string
  inputBinding:
    prefix: --graph_type
- id: ref_db
  doc: reference mash database for contamination quantification.
  type: string
  inputBinding:
    prefix: --ref_db
- id: input
  doc: input GFF3 files (usually output from running Prokka)
  type: string[]
  inputBinding:
    prefix: --input
- id: out_dir
  doc: location of an output directory
  type: string
  inputBinding:
    prefix: --out_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- panaroo-qc
