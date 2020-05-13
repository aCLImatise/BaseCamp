class: CommandLineTool
id: bioformats_vcfgeno2bed.cwl
inputs:
- id: vcf_file
  doc: a VCF file
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: the output BED3+ file of genotype counts
  type: string
  inputBinding:
    position: 1
- id: individuals
  doc: a file with the list of individuals to be considered for genotype counting
  type: string
  inputBinding:
    prefix: --individuals
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- vcfgeno2bed
