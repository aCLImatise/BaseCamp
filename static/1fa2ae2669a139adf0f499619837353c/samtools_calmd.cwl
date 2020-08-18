class: CommandLineTool
id: ../../../samtools_calmd.cwl
inputs:
- id: change_identical_bases
  doc: change identical bases to '='
  type: boolean
  inputBinding:
    prefix: -e
- id: uncompressed_bam_output
  doc: uncompressed BAM output (for piping)
  type: boolean
  inputBinding:
    prefix: -u
- id: compressed_bam_output
  doc: compressed BAM output
  type: boolean
  inputBinding:
    prefix: -b
- id: input_sam_header
  doc: the input is SAM with header
  type: boolean
  inputBinding:
    prefix: -S
- id: modify_quality_string
  doc: modify the quality string
  type: boolean
  inputBinding:
    prefix: -A
- id: compute_bq_tag
  doc: compute the BQ tag (without -A) or cap baseQ by BAQ (with -A)
  type: boolean
  inputBinding:
    prefix: -r
- id: extended_baq_better
  doc: extended BAQ for better sensitivity but lower specificity
  type: boolean
  inputBinding:
    prefix: -E
- id: eu_brs
  doc: ''
  type: boolean
  inputBinding:
    prefix: -eubrS
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fill_md
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ref_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- calmd
