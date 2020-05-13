class: CommandLineTool
id: common_errors_from_bam_bam.cwl
inputs:
- id: bam
  doc: input bam file containing assemblies trimmed to a common alignment window
  type: string
  inputBinding:
    position: 0
- id: ref_fast_a
  doc: reference fasta file of the reference over that alignment window
  type: string
  inputBinding:
    position: 1
- id: output_prefix
  doc: 'Prefix for outputs. (default: common_errors)'
  type: string
  inputBinding:
    prefix: --output_prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- common_errors_from_bam
- bam
