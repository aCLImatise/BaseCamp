#!/usr/bin/env cwl-runner

baseCommand:
- variant_annotation.py
class: CommandLineTool
cwlVersion: v1.0
id: variant_annotation.py
inputs:
- doc: 'input vcf file (default: None)'
  id: in_file
  inputBinding:
    prefix: --infile
  type: string
- doc: 'output vcf file (default: None)'
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: 'dbsnp vcf file to feed into GATK4 HaplotypeCaller (default: None)'
  id: dbsnp
  inputBinding:
    prefix: --dbsnp
  type: string
- doc: 'cosmic vcf file to feed into GATK4 HaplotypeCaller (default: None)'
  id: cosmic
  inputBinding:
    prefix: --cosmic
  type: string
- doc: 'SnpSift JAR (default: None)'
  id: snp_sift
  inputBinding:
    prefix: --snpsift
  type: string
- doc: 'snpEff JAR (default: None)'
  id: snp_eff
  inputBinding:
    prefix: --snpeff
  type: string
- doc: 'snpEff db (default: GRCh38.86)'
  id: snp_eff_db
  inputBinding:
    prefix: --snpeff-db
  type: string
