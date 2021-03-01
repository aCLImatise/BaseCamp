class: CommandLineTool
id: o_create_GG_alignment_template_from_taxon.cwl
inputs:
- id: in_output
  doc: "Path to the output folder\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_create_greengenes_alignment
  doc: Create GreenGenes Alignment Template
  type: string
  inputBinding:
    position: 0
- id: in_tax_on
  doc: '"Taxon" name to be searched in GreenGenes'
  type: string
  inputBinding:
    position: 0
- id: in_otu_id_to_green_genes
  doc: "Path to the \"otu_id_to_greengenes\" file. You can\ndownload it from \"http://greengenes.lbl.gov/Download/O\n\
    TUs/gg_otus_6oct2010/taxonomies/otu_id_to_greengenes.t\nxt\""
  type: string
  inputBinding:
    position: 1
- id: in_path_greengenes_alignment
  doc: "Path to the GreenGenes alignment file. You can\ndownload it from \"http://greengenes.lbl.gov/Download/O\n\
    TUs/gg_otus_6oct2010/rep_set/gg_97_otus_6oct2010_align\ned.fasta\""
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path to the output folder\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- o-create-GG-alignment-template-from-taxon
