class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lofreq_alnqual.cwl
inputs:
- id: bam_output_sam
  doc: BAM output (instead of SAM)
  type: boolean
  inputBinding:
    prefix: -b
- id: uncompressed_bam_output
  doc: Uncompressed BAM output (for piping)
  type: boolean
  inputBinding:
    prefix: -u
- id: input_sam_header
  doc: The input is SAM with header
  type: boolean
  inputBinding:
    prefix: -S
- id: use_default_baq
  doc: Use default instead of extended BAQ (the latter gives better sensitivity but
    lower specificity)
  type: boolean
  inputBinding:
    prefix: -e
- id: compute_base_alignment_qualities
  doc: Don't compute base alignment qualities
  type: boolean
  inputBinding:
    prefix: -B
- id: compute_indel_alignment_qualities
  doc: Don't compute indel alignment qualities
  type: boolean
  inputBinding:
    prefix: -A
- id: recompute_ie_overwrite
  doc: Recompute i.e. overwrite existing values
  type: boolean
  inputBinding:
    prefix: -r
- id: aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- alnqual
