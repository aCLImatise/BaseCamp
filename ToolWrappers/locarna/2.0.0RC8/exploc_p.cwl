class: CommandLineTool
id: exploc_p.cwl
inputs:
- id: in_man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_exp_a_rnap_params
  doc: parameters for ExpaRNA-P
  type: boolean
  inputBinding:
    prefix: --exparnap-params
- id: in_loca_rna_params
  doc: parameters for LocARNA
  type: boolean
  inputBinding:
    prefix: --locarna-params
- id: in_output
  doc: path to output folder
  type: File
  inputBinding:
    prefix: --output
- id: in_output_time
  doc: output individual runtimes
  type: boolean
  inputBinding:
    prefix: --output-time
- id: in_loca_rna_dot
  doc: --exparnap-params   parameters for ExpaRNA-P (def="").
  type: string
  inputBinding:
    position: 0
- id: in_stored_dot
  doc: --output-time       print individual times for Preprocessing, ExpaRNA-P
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path to output folder
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- exploc_p
