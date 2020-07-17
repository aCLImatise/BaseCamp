class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/panaroo_gene_neighbourhood.cwl
inputs:
- id: gene
  doc: gene of interest
  type: string
  inputBinding:
    prefix: --gene
- id: genome_id
  doc: genome ID of interest (default=ALL)
  type: string
  inputBinding:
    prefix: --genome_id
- id: graph
  doc: genome graph gml ('final_graph.gml')
  type: string
  inputBinding:
    prefix: --graph
- id: expand_no
  doc: lengths of the path that will be expanded on in a radius the target gene (default=5)
  type: string
  inputBinding:
    prefix: --expand_no
- id: out
  doc: output file
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- panaroo-gene-neighbourhood
