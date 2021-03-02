class: CommandLineTool
id: SnpSift_ccs.cwl
inputs:
- id: in__be_quiet
  doc: ': Be quiet'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in__be_verbose
  doc: ': Be verbose'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_file_do_ttf_am
  doc: ': File with genotypes and groups informations (groups are in familyId)'
  type: File
  inputBinding:
    position: 0
- id: in_file_dot_bed
  doc: ': File with regions of interest (intervals in BED format)'
  type: File
  inputBinding:
    position: 1
- id: in_file_dot_vcf
  doc: ': A VCF file (variants and genotype data)'
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- ccs
