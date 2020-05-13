class: CommandLineTool
id: mendelscan_trio.cwl
inputs:
- id: vep_file
  doc: Variant annotation in VEP format
  type: boolean
  inputBinding:
    prefix: --vep-file
- id: ped_file
  doc: Pedigree file in 6-column tab-delimited format
  type: boolean
  inputBinding:
    prefix: --ped-file
- id: gene_file
  doc: A list of gene expression values for tissue of interest
  type: boolean
  inputBinding:
    prefix: --gene-file
- id: output_file
  doc: Output file to contain summary report
  type: boolean
  inputBinding:
    prefix: --output-file
- id: output_recessive
  doc: Output file to contain scored variants in VCF format
  type: boolean
  inputBinding:
    prefix: --output-recessive
- id: output_de_novo
  doc: file for possible de novo variants
  type: string
  inputBinding:
    prefix: --output-denovo
outputs: []
cwlVersion: v1.1
baseCommand:
- mendelscan
- trio
