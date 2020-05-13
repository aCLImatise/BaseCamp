class: CommandLineTool
id: o_create_GG_alignment_template_from_taxon.cwl
inputs:
- id: tax_on
  doc: '"Taxon" name to be searched in GreenGenes'
  type: string
  inputBinding:
    position: 0
- id: otu_id_to_green_genes
  doc: Path to the "otu_id_to_greengenes" file. You can download it from "http://greengenes.lbl.gov/Download/O
    TUs/gg_otus_6oct2010/taxonomies/otu_id_to_greengenes.t xt"
  type: string
  inputBinding:
    position: 1
- id: green_genes_alignment
  doc: Path to the GreenGenes alignment file. You can download it from "http://greengenes.lbl.gov/Download/O
    TUs/gg_otus_6oct2010/rep_set/gg_97_otus_6oct2010_align ed.fasta"
  type: string
  inputBinding:
    position: 2
- id: output
  doc: Path to the output folder
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- o-create-GG-alignment-template-from-taxon
