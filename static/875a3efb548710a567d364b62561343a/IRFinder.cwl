class: CommandLineTool
id: IRFinder.cwl
inputs:
- id: r
  doc: Directory should not yet exist, will be created.
  type: string
  inputBinding:
    prefix: -r
- id: e
  doc: ': Typically an ERCC reference.'
  type: string
  inputBinding:
    prefix: -e
- id: b
  doc: ': BED of regions to be excluded from analysis.'
  type: string
  inputBinding:
    prefix: -b
- id: r
  doc: ': A non-overlapping BED file of additional Regions of Interest for read counts.'
  type: string
  inputBinding:
    prefix: -R
- id: r
  doc: Directory should already contain EXACT files named 'genome.fa' and 'transcripts.gtf'
    (case-sensitive) for genome and transcriptome annotations respectively.
  type: string
  inputBinding:
    prefix: -r
- id: e
  doc: ': Typically an ERCC reference.'
  type: string
  inputBinding:
    prefix: -e
- id: b
  doc: ': BED of regions to be excluded from analysis.'
  type: string
  inputBinding:
    prefix: -b
- id: r
  doc: ': A non-overlapping BED file of additional Regions of Interest for read counts.'
  type: string
  inputBinding:
    prefix: -R
- id: r
  doc: As built by the 'BuildRef' option.
  type: string
  inputBinding:
    prefix: -r
- id: m
  doc: memory. Maximum memory to use for sort, in MB. Default, auto-detected no greater
    than 10,000MB.
  type: string
  inputBinding:
    prefix: -M
outputs: []
cwlVersion: v1.1
baseCommand:
- IRFinder
