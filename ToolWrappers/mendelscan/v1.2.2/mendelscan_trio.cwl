class: CommandLineTool
id: mendelscan_trio.cwl
inputs:
- id: in_vep_file
  doc: Variant annotation in VEP format
  type: boolean?
  inputBinding:
    prefix: --vep-file
- id: in_ped_file
  doc: Pedigree file in 6-column tab-delimited format
  type: boolean?
  inputBinding:
    prefix: --ped-file
- id: in_gene_file
  doc: A list of gene expression values for tissue of interest
  type: boolean?
  inputBinding:
    prefix: --gene-file
- id: in_output_file
  doc: Output file to contain summary report
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_recessive
  doc: Output file to contain scored variants in VCF format
  type: File?
  inputBinding:
    prefix: --output-recessive
- id: in_output_de_novo
  doc: file for possible de novo variants
  type: File?
  inputBinding:
    prefix: --output-denovo
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_trio
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_vcf
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file to contain summary report
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_recessive
  doc: Output file to contain scored variants in VCF format
  type: File?
  outputBinding:
    glob: $(inputs.in_output_recessive)
hints: []
cwlVersion: v1.1
baseCommand:
- mendelscan
- trio
