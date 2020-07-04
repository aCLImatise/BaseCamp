class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_eval_estimate_transcript_length_distribution.cwl
inputs:
- id: input_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parameter_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-eval-estimate-transcript-length-distribution
