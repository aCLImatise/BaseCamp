class: CommandLineTool
id: panaroo_gene_neighbourhood.cwl
inputs:
- id: in_graph
  doc: '[--expand_no EXPAND_NO]'
  type: string?
  inputBinding:
    prefix: --graph
- id: in_gene
  doc: gene of interest
  type: string?
  inputBinding:
    prefix: --gene
- id: in_genome_id
  doc: genome ID of interest (default=ALL)
  type: string?
  inputBinding:
    prefix: --genome_id
- id: in_expand_no
  doc: "lengths of the path that will be expanded on in a\nradius the target gene\
    \ (default=5)"
  type: File?
  inputBinding:
    prefix: --expand_no
- id: in_out
  doc: output file
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- panaroo-gene-neighbourhood
