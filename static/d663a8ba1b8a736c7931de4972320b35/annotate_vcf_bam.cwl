class: CommandLineTool
id: annotate_vcf_bam.py.cwl
inputs:
- id: bam
  doc: 'BAM file (default: None)'
  type: string
  inputBinding:
    prefix: --bam
- id: chromosomes
  doc: 'Chromosomes (default: [])'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: v_cfs
  doc: 'Input VCF files (default: None)'
  type: string[]
  inputBinding:
    prefix: --vcfs
outputs: []
cwlVersion: v1.1
baseCommand:
- annotate_vcf_bam.py
