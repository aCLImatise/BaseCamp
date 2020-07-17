class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vsnp_alignment_vcf.py.cwl
inputs:
- id: read_one
  doc: 'Required: single read, R1 when Illumina read'
  type: string
  inputBinding:
    prefix: --read1
- id: read_two
  doc: 'Optional: R2 Illumina read'
  type: string
  inputBinding:
    prefix: --read2
- id: reference
  doc: 'Optional: Provide reference option or FASTA file. If neither are given, no
    -r option, then a TB/Brucella/paraTB best reference are searched'
  type: string
  inputBinding:
    prefix: --reference
- id: gbk
  doc: 'Optional: gbk to annotate VCF file'
  type: string
  inputBinding:
    prefix: --gbk
- id: skip_assembly
  doc: skip assembly of unmapped reads
  type: boolean
  inputBinding:
    prefix: --skip_assembly
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_alignment_vcf.py
