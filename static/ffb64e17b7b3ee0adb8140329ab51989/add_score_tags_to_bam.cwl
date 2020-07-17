class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/add_score_tags_to_bam.cwl
inputs:
- id: arg_value_substract
  doc: '[ --phred_offset ] arg (=33)       Value to substract from ASCII code to  get
    the PHRED quality.'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_issue_warning
  doc: '[ --bad_alignment_threshold ] arg (=1000) Issue a warning when AS tag is above  this
    value.'
  type: boolean
  inputBinding:
    prefix: -b
- id: output_reads_computed
  doc: '[ --skip_unknown ]                 Do not output reads for which no AS tag
    could be computed, e.g. because the  reference sequence was unknown.'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_number_default
  doc: '[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly
    single-threaded).'
  type: boolean
  inputBinding:
    prefix: -T
- id: reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- add-score-tags-to-bam
