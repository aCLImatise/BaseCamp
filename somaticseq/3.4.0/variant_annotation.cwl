class: CommandLineTool
id: variant_annotation.py.cwl
inputs:
- id: in_file
  doc: 'input vcf file (default: None)'
  type: string
  inputBinding:
    prefix: --infile
- id: outfile
  doc: 'output vcf file (default: None)'
  type: string
  inputBinding:
    prefix: --outfile
- id: dbsnp
  doc: 'dbsnp vcf file to feed into GATK4 HaplotypeCaller (default: None)'
  type: string
  inputBinding:
    prefix: --dbsnp
- id: cosmic
  doc: 'cosmic vcf file to feed into GATK4 HaplotypeCaller (default: None)'
  type: string
  inputBinding:
    prefix: --cosmic
- id: snp_sift
  doc: 'SnpSift JAR (default: None)'
  type: string
  inputBinding:
    prefix: --snpsift
- id: snp_eff
  doc: 'snpEff JAR (default: None)'
  type: string
  inputBinding:
    prefix: --snpeff
- id: snp_eff_db
  doc: 'snpEff db (default: GRCh38.86)'
  type: string
  inputBinding:
    prefix: --snpeff-db
outputs: []
cwlVersion: v1.1
baseCommand:
- variant_annotation.py
