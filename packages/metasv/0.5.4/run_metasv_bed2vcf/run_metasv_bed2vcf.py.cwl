class: CommandLineTool
id: run_metasv_bed2vcf.py.cwl
inputs:
- id: in_sample
  doc: 'Sample name (default: None)'
  type: string
  inputBinding:
    prefix: --sample
- id: in_bed
  doc: 'MetaSV final BED (default: None)'
  type: string
  inputBinding:
    prefix: --bed
- id: in_vcf
  doc: 'Final VCF to output (default: None)'
  type: string
  inputBinding:
    prefix: --vcf
- id: in_reference
  doc: 'Reference FASTA (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: in_work
  doc: 'Work directory (default: work)'
  type: Directory
  inputBinding:
    prefix: --work
- id: in_pass_only
  doc: 'Output only PASS calls (default: False)'
  type: boolean
  inputBinding:
    prefix: --pass_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_metasv_bed2vcf.py
