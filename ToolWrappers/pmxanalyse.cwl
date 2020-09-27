class: CommandLineTool
id: pmxanalyse.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File
  inputBinding:
    prefix: --config
- id: in_input_a_x_vg_zip_path
  doc: Path the zip file containing the dgdl.xvg files of the A state
  type: File
  inputBinding:
    prefix: --input_a_xvg_zip_path
- id: in_input_b_x_vg_zip_path
  doc: Path the zip file containing the dgdl.xvg files of the B state
  type: File
  inputBinding:
    prefix: --input_b_xvg_zip_path
- id: in_output_result_path
  doc: Path to the TXT results file
  type: File
  inputBinding:
    prefix: --output_result_path
- id: in_output_work_plot_path
  doc: "Path to the PNG plot results file\n"
  type: File
  inputBinding:
    prefix: --output_work_plot_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_result_path
  doc: Path to the TXT results file
  type: File
  outputBinding:
    glob: $(inputs.in_output_result_path)
- id: out_output_work_plot_path
  doc: "Path to the PNG plot results file\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_work_plot_path)
cwlVersion: v1.1
baseCommand:
- pmxanalyse
