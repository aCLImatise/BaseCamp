class: CommandLineTool
id: run_metasv_bed2vcf.py.cwl
inputs:
- id: sample
  doc: 'Sample name (default: None)'
  type: string
  inputBinding:
    prefix: --sample
- id: bed
  doc: 'MetaSV final BED (default: None)'
  type: string
  inputBinding:
    prefix: --bed
- id: vcf
  doc: 'Final VCF to output (default: None)'
  type: string
  inputBinding:
    prefix: --vcf
- id: reference
  doc: 'Reference FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: work
  doc: 'Work directory (default: work)'
  type: string
  inputBinding:
    prefix: --work
- id: pass_only
  doc: 'Output only PASS calls (default: False)'
  type: boolean
  inputBinding:
    prefix: --pass_only
outputs: []
cwlVersion: v1.1
baseCommand:
- run_metasv_bed2vcf.py
