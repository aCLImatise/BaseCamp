class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedtools_annotate.cwl
inputs:
- id: both
  doc: Report the counts followed by the % coverage. - Default is to report the fraction
    of -i covered by each file.
  type: boolean
  inputBinding:
    prefix: -both
- id: require_same_strandedness
  doc: Require same strandedness.  That is, only counts overlaps on the _same_ strand.
    - By default, overlaps are counted without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: require_different_strandedness
  doc: Require different strandedness.  That is, only count overlaps on the _opposite_
    strand. - By default, overlaps are counted without respect to strand.
  type: boolean
  inputBinding:
    prefix: -S
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: files
  doc: ''
  type: File
  inputBinding:
    prefix: -files
- id: file_two_dot_dotfile_n
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- annotate
