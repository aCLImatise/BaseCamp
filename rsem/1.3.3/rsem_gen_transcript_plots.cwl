class: CommandLineTool
id: ../../../rsem_gen_transcript_plots.cwl
inputs:
- id: sample_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: is_allele_specific
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: id_type
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-gen-transcript-plots
