class: CommandLineTool
id: cnvkit.py_export_vcf.cwl
inputs:
- id: in_cnr
  doc: "Bin-level copy ratios (*.cnr). Used to indicate fuzzy\nboundaries for segments\
    \ in the output VCF via the\nCIPOS and CIEND tags."
  type: string
  inputBinding:
    prefix: --cnr
- id: in_sample_id
  doc: "Sample name to write in the genotype field of the\noutput VCF file. [Default:\
    \ use the sample ID, taken\nfrom the file name]"
  type: File
  inputBinding:
    prefix: --sample-id
- id: in_ploidy
  doc: 'Ploidy of the sample cells. [Default: 2]'
  type: long
  inputBinding:
    prefix: --ploidy
- id: in_sample_sex
  doc: "Specify the sample's chromosomal sex as male or\nfemale. (Otherwise guessed\
    \ from X and Y coverage)."
  type: string
  inputBinding:
    prefix: --sample-sex
- id: in_haploid_x_reference
  doc: "Was a male reference used? If so, expect half ploidy\non chrX and chrY; otherwise,\
    \ only chrY has half\nploidy. In CNVkit, if a male reference was used, the\n\"\
    neutral\" copy number (ploidy) of chrX is 1; chrY is\nhaploid for either reference\
    \ sex."
  type: boolean
  inputBinding:
    prefix: --haploid-x-reference
- id: in_output
  doc: "Output file name.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sample_id
  doc: "Sample name to write in the genotype field of the\noutput VCF file. [Default:\
    \ use the sample ID, taken\nfrom the file name]"
  type: File
  outputBinding:
    glob: $(inputs.in_sample_id)
- id: out_output
  doc: "Output file name.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- export
- vcf
