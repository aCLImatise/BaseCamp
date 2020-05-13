class: CommandLineTool
id: add_score_tags_to_bam.cwl
inputs:
- id: reference_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p
  doc: '[ --phred_offset ] arg (=33)       Value to substract from ASCII code to  get
    the PHRED quality.'
  type: boolean
  inputBinding:
    prefix: -p
- id: b
  doc: '[ --bad_alignment_threshold ] arg (=1000) Issue a warning when AS tag is above  this
    value.'
  type: boolean
  inputBinding:
    prefix: -b
- id: s
  doc: '[ --skip_unknown ]                 Do not output reads for which no AS tag
    could be computed, e.g. because the  reference sequence was unknown.'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: '[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly
    single-threaded).'
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- add-score-tags-to-bam
