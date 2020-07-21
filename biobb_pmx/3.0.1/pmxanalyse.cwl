class: CommandLineTool
id: ../../../pmxanalyse.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: input_a_x_vg_zip_path
  doc: Path the zip file containing the dgdl.xvg files of the A state
  type: string
  inputBinding:
    prefix: --input_a_xvg_zip_path
- id: input_b_x_vg_zip_path
  doc: Path the zip file containing the dgdl.xvg files of the B state
  type: string
  inputBinding:
    prefix: --input_b_xvg_zip_path
- id: output_result_path
  doc: Path to the TXT results file
  type: string
  inputBinding:
    prefix: --output_result_path
- id: output_work_plot_path
  doc: Path to the PNG plot results file
  type: string
  inputBinding:
    prefix: --output_work_plot_path
outputs: []
cwlVersion: v1.1
baseCommand:
- pmxanalyse
