class: CommandLineTool
id: topas.cwl
inputs:
- id: analyse_vcf
  doc: analyse a given vcf file by given windows
  type: string
  inputBinding:
    position: 0
- id: gen_cons
  doc: generate a consensus sequence from a GATK Unified Genotyper generated VCF file
  type: string
  inputBinding:
    position: 1
- id: join_expr_tables
  doc: join expression tables together (based on gene names)
  type: string
  inputBinding:
    position: 2
- id: norm_expr_table
  doc: normalize expression table
  type: string
  inputBinding:
    position: 3
- id: phy_cc
  doc: 'crawl through a given SNP table in tsv format and calculate simple statistics '
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- topas
