class: CommandLineTool
id: dr_disco_detect.cwl
inputs:
- id: in_min_e_score
  doc: "Minimal score to initiate pulling sub-graphs\n(larger numbers boost performance\
    \ but result in\nsuboptimal results) [default=8]"
  type: long
  inputBinding:
    prefix: --min-e-score
- id: in_bam_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
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
- dr-disco
- detect
