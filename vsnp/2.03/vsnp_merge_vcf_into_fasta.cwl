class: CommandLineTool
id: vsnp_merge_vcf_into_fasta.py.cwl
inputs:
- id: merge_vcf_into_fast_apy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: 'REQUIRED: In file to be processed'
  type: string
  inputBinding:
    prefix: --fasta_file
- id: vcf_file
  doc: 'REQUIRED: In file to be processed'
  type: string
  inputBinding:
    prefix: --vcf_file
- id: qual_threshold
  doc: 'OPTIONAL: QUAL values below this value will not be applied.'
  type: string
  inputBinding:
    prefix: --qual_threshold
- id: map_threshold
  doc: 'OPTIONAL: Map Quality values below this value will not be applied.'
  type: string
  inputBinding:
    prefix: --map_threshold
- id: ambiguity_not
  doc: 'OPTIONAL: when -a used ambiguity will not be applied. By default it will be
    applied.'
  type: boolean
  inputBinding:
    prefix: --ambiguity_NOT
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_merge_vcf_into_fasta.py
