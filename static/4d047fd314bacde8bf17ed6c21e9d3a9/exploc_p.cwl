class: CommandLineTool
id: exploc_p.cwl
inputs:
- id: man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: exp_a_rnap_params
  doc: parameters for ExpaRNA-P
  type: boolean
  inputBinding:
    prefix: --exparnap-params
- id: loca_rna_params
  doc: parameters for LocARNA
  type: boolean
  inputBinding:
    prefix: --locarna-params
- id: output
  doc: path to output folder
  type: boolean
  inputBinding:
    prefix: --output
- id: output_time
  doc: output individual runtimes
  type: boolean
  inputBinding:
    prefix: --output-time
- id: man
  doc: prints full documentation and exits.
  type: boolean
  inputBinding:
    prefix: --man
- id: verbose
  doc: shows in addition the output of ExpaRNA-P and LocARNA.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: exp_a_rnap_params
  doc: parameters for ExpaRNA-P (def="").
  type: boolean
  inputBinding:
    prefix: --exparnap-params
- id: loca_rna_params
  doc: parameters for LocARNA (def="").
  type: boolean
  inputBinding:
    prefix: --locarna-params
- id: output
  doc: path to output folder where intermediate results are stored.
  type: boolean
  inputBinding:
    prefix: --output
- id: output_time
  doc: print individual times for Preprocessing, ExpaRNA-P and LocARNA.
  type: boolean
  inputBinding:
    prefix: --output-time
outputs: []
cwlVersion: v1.1
baseCommand:
- exploc_p
