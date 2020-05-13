class: CommandLineTool
id: trim_alignments.cwl
inputs:
- id: bams
  doc: input bam files
  type: string
  inputBinding:
    position: 0
- id: ref_name
  doc: 'Reference to process, only needed if bams contain multiple references. (default:
    None)'
  type: string
  inputBinding:
    prefix: --ref_name
- id: output_prefix
  doc: 'Prefix for outputs. (default: trimmed)'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: reference_fast_a
  doc: 'Reference fasta to trim to alignment window. (default: None)'
  type: string
  inputBinding:
    prefix: --reference_fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- trim_alignments
