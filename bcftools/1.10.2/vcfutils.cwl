class: CommandLineTool
id: vcfutils.pl_vcf2fq.cwl
inputs:
- id: all_site_vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: d
  doc: minimum depth          [3]
  type: long
  inputBinding:
    prefix: -d
- id: d
  doc: maximum depth          [100000]
  type: long
  inputBinding:
    prefix: -D
- id: q
  doc: min RMS mapQ           [10]
  type: long
  inputBinding:
    prefix: -Q
- id: l
  doc: INDEL filtering window [5]
  type: long
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfutils.pl
- vcf2fq
