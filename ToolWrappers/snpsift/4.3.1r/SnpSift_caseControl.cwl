class: CommandLineTool
id: SnpSift_caseControl.cwl
inputs:
- id: in_chi_two
  doc: ': Use ChiSquare approximarion instead of Fisher exact test.'
  type: boolean
  inputBinding:
    prefix: -chi2
- id: in_name
  doc: ": A name to be added after to 'Cases' or 'Controls' tags"
  type: string
  inputBinding:
    prefix: -name
- id: in_tf_am
  doc: ': A TFAM file having case/control informations (phenotype colmun)'
  type: File
  inputBinding:
    prefix: -tfam
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_file_dot_vcf
  doc: ': A VCF file (variants and genotype data)'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- caseControl
