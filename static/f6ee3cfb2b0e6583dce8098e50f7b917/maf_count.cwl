class: CommandLineTool
id: maf_count.py.cwl
inputs:
- id: cols
  doc: count alignment columns rather than number of alignments
  type: boolean
  inputBinding:
    prefix: --cols
- id: bases
  doc: count bases in first species rather than number of alignments
  type: boolean
  inputBinding:
    prefix: --bases
- id: skip
  doc: when counting bases, skip this base
  type: string
  inputBinding:
    prefix: --skip
- id: each
  doc: print a count for each alignment rather than whole file
  type: boolean
  inputBinding:
    prefix: --each
- id: ref
  doc: reference sequence (first by default, 0..n)
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_count.py
