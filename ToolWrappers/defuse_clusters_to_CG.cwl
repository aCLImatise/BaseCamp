class: CommandLineTool
id: defuse_clusters_to_CG.cwl
inputs:
- id: in_gene_annotation
  doc: GTF-file used by defuse
  type: File
  inputBinding:
    prefix: --gene-annotation
- id: in_output
  doc: "output filename; '-' for stdout\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
- id: in_input
  doc: Defuse cluster file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output filename; '-' for stdout\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- defuse-clusters-to-CG
