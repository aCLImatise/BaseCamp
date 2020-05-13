class: CommandLineTool
id: phyluce_snp_get_dbsnp_variability_for_all_uces.cwl
inputs:
- id: dbsnp
  doc: CSV input from dbSNP giving SNP positions within UCE
  type: string
  inputBinding:
    prefix: --dbsnp
- id: xml
  doc: The XML file holiding locus data from dbSNP
  type: string
  inputBinding:
    prefix: --xml
- id: output
  doc: The output file
  type: string
  inputBinding:
    prefix: --output
- id: dupe_file
  doc: The path to a lastz file of lastz-against-self results
  type: string
  inputBinding:
    prefix: --dupefile
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_get_dbsnp_variability_for_all_uces
