class: CommandLineTool
id: humann2_unpack_pathways.cwl
inputs:
- id: input_genes
  doc: the gene family or EC abundance file
  type: string
  inputBinding:
    prefix: --input-genes
- id: input_pathways
  doc: the pathway abundance file
  type: string
  inputBinding:
    prefix: --input-pathways
- id: gene_mapping
  doc: gene family to reaction mapping file
  type: string
  inputBinding:
    prefix: --gene-mapping
- id: pathway_mapping
  doc: reaction to pathway mapping file
  type: File
  inputBinding:
    prefix: --pathway-mapping
- id: remove_taxonomy
  doc: remove the taxonomy from the output file
  type: boolean
  inputBinding:
    prefix: --remove-taxonomy
- id: output
  doc: the table to write
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_unpack_pathways
