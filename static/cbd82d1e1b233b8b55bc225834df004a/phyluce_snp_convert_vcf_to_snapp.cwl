class: CommandLineTool
id: phyluce_snp_convert_vcf_to_snapp.cwl
inputs:
- id: input
  doc: The VCF file to process
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The STRUCTURE file to write
  type: string
  inputBinding:
    prefix: --output
- id: filter_identical
  doc: Remove sites with only a single genotype.
  type: boolean
  inputBinding:
    prefix: --filter-identical
- id: filter_informative
  doc: Remove uninformative sites.
  type: boolean
  inputBinding:
    prefix: --filter-informative
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_snp_convert_vcf_to_snapp
