class: CommandLineTool
id: annotate_vcf_bam.py.cwl
inputs:
- id: in_bam
  doc: 'BAM file (default: None)'
  type: File
  inputBinding:
    prefix: --bam
- id: in_chromosomes
  doc: 'Chromosomes (default: [])'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_v_cfs
  doc: "Input VCF files (default: None)\n"
  type: string[]
  inputBinding:
    prefix: --vcfs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- annotate_vcf_bam.py
