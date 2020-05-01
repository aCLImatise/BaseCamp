#!/usr/bin/env cwl-runner

baseCommand:
- o-create-GG-alignment-template-from-taxon
class: CommandLineTool
cwlVersion: v1.0
id: o-create-gg-alignment-template-from-taxon
inputs:
- doc: '"Taxon" name to be searched in GreenGenes'
  id: tax_on
  inputBinding:
    position: 0
  type: string
- doc: Path to the "otu_id_to_greengenes" file. You can download it from "http://greengenes.lbl.gov/Download/O
    TUs/gg_otus_6oct2010/taxonomies/otu_id_to_greengenes.t xt"
  id: otu_id_to_green_genes
  inputBinding:
    position: 1
  type: string
- doc: Path to the GreenGenes alignment file. You can download it from "http://greengenes.lbl.gov/Download/O
    TUs/gg_otus_6oct2010/rep_set/gg_97_otus_6oct2010_align ed.fasta"
  id: green_genes_alignment
  inputBinding:
    position: 2
  type: string
- doc: Path to the output folder
  id: output
  inputBinding:
    prefix: --output
  type: string
