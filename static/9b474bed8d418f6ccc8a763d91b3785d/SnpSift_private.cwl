class: CommandLineTool
id: SnpSift_private.cwl
inputs:
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_file_do_ttf_am
  doc: ": File with genotypes and groups information (in PLINK's TFAM format)"
  type: File
  inputBinding:
    position: 0
- id: in_file_dot_vcf
  doc: ": A VCF file (variants and genotype data). Default: 'STDIN'"
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- private
