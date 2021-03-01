class: CommandLineTool
id: rgt_tools.py_gtf_to_bed.cwl
inputs:
- id: in_input_gtf_file
  doc: Input GTF file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_bed_file
  doc: Output BED file
  type: File?
  inputBinding:
    prefix: -o
- id: in_define_the_source
  doc: Define the source {ENSEMBL,HAVANA,All}
  type: string?
  inputBinding:
    prefix: -s
- id: in_define_feature_genetranscriptexoncdsutrstartcodonstopcodonselenocysteineall
  doc: "Define the feature {gene,transcript,exon,CDS,UTR,start_codon,sto\np_codon,Selenocysteine,All}"
  type: string?
  inputBinding:
    prefix: -f
- id: in_define_gene_type
  doc: "Define gene type e.g. 'protein_coding' more:\nhttp://www.gencodegenes.org/gencode_biotypes.html"
  type: string?
  inputBinding:
    prefix: -t
- id: in_st
  doc: Define gene status {KNOWN, NOVEL, PUTATIVE,All}
  type: string?
  inputBinding:
    prefix: -st
- id: in_define_gene_list
  doc: Define the gene list for filtering, default is None.
  type: string?
  inputBinding:
    prefix: -g
- id: in_id
  doc: Use gene ID as region name, instead of gene symbol.
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_save_exons_entries
  doc: Save exons into entries with block in BED
  type: boolean?
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: Output BED file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bed_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- gtf_to_bed
