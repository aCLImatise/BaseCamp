class: CommandLineTool
id: bioformats_vcfgeno2bed.cwl
inputs:
- id: in_individuals
  doc: "a file with the list of individuals to be considered\nfor genotype counting\n"
  type: File?
  inputBinding:
    prefix: --individuals
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_vcf_file
  doc: a VCF file
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: the output BED3+ file of genotype counts
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bioformats
- vcfgeno2bed
