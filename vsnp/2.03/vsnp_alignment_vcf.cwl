class: CommandLineTool
id: vsnp_alignment_vcf.py.cwl
inputs:
- id: read_1
  doc: 'Required: single read, R1 when Illumina read'
  type: string
  inputBinding:
    prefix: --read1
- id: read_2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_alignment_vcf.py
