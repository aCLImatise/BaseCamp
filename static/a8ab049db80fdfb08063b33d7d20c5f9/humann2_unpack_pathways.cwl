class: CommandLineTool
id: humann2_unpack_pathways.cwl
inputs:
- id: in_input_genes
  doc: the gene family or EC abundance file
  type: File
  inputBinding:
    prefix: --input-genes
- id: in_input_pathways
  doc: the pathway abundance file
  type: File
  inputBinding:
    prefix: --input-pathways
- id: in_gene_mapping
  doc: gene family to reaction mapping file
  type: File
  inputBinding:
    prefix: --gene-mapping
- id: in_pathway_mapping
  doc: reaction to pathway mapping file
  type: File
  inputBinding:
    prefix: --pathway-mapping
- id: in_remove_taxonomy
  doc: remove the taxonomy from the output file
  type: File
  inputBinding:
    prefix: --remove-taxonomy
- id: in_the_table_write
  doc: "the table to write\n"
  type: string
  inputBinding:
    prefix: --output
- id: in_unpack_pathway_abundances
  doc: Unpack pathway abundances to show genes included
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_remove_taxonomy
  doc: remove the taxonomy from the output file
  type: File
  outputBinding:
    glob: $(inputs.in_remove_taxonomy)
cwlVersion: v1.1
baseCommand:
- humann2_unpack_pathways
