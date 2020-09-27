class: CommandLineTool
id: lofreq_alnqual.cwl
inputs:
- id: in_bam_output_instead
  doc: BAM output (instead of SAM)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_uncompressed_bam_output
  doc: Uncompressed BAM output (for piping)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_input_sam_header
  doc: The input is SAM with header
  type: boolean
  inputBinding:
    prefix: -S
- id: in_use_default_baq
  doc: Use default instead of extended BAQ (the latter gives better sensitivity but
    lower specificity)
  type: boolean
  inputBinding:
    prefix: -e
- id: in_compute_alignment_qualities
  doc: Don't compute base alignment qualities
  type: boolean
  inputBinding:
    prefix: -B
- id: in_compute_indel_qualities
  doc: Don't compute indel alignment qualities
  type: boolean
  inputBinding:
    prefix: -A
- id: in_recompute_ie_overwrite
  doc: Recompute i.e. overwrite existing values
  type: boolean
  inputBinding:
    prefix: -r
- id: in_aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lofreq
- alnqual
