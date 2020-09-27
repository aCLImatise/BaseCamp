class: CommandLineTool
id: rsem_gen_transcript_plots.cwl
inputs:
- id: in_sample_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_is_allele_specific
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_id_type
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-gen-transcript-plots
