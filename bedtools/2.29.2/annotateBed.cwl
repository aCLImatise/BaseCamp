class: CommandLineTool
id: annotateBed.cwl
inputs:
- id: names
  doc: A list of names (one / file) to describe each file in -i. These names will
    be printed as a header line.
  type: boolean
  inputBinding:
    prefix: -names
- id: counts
  doc: the count of features in each file that overlap -i.
  type: string
  inputBinding:
    prefix: -counts
- id: default
  doc: to report the fraction of -i covered by each file.
  type: string
  inputBinding:
    prefix: '- Default'
- id: both
  doc: Report the counts followed by the % coverage. - Default is to report the fraction
    of -i covered by each file.
  type: boolean
  inputBinding:
    prefix: -both
- id: s
  doc: Require same strandedness.  That is, only counts overlaps on the _same_ strand.
    - By default, overlaps are counted without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: Require different strandedness.  That is, only count overlaps on the _opposite_
    strand. - By default, overlaps are counted without respect to strand.
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- annotateBed
