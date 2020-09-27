class: CommandLineTool
id: hicQC.cwl
inputs:
- id: in_log_files
  doc: Path to the log files to be processed
  type: string[]
  inputBinding:
    prefix: --logfiles
- id: in_labels
  doc: "Label to assign to each log file. Each label should be\nseparated by a space.\
    \ Quote labels that contain\nspaces: E.g. --labels label1 \"labels 2\""
  type: string[]
  inputBinding:
    prefix: --labels
- id: in_output_folder
  doc: "Several files with be saved under this folder: A table\ncontaining the results\
    \ and a html file with several\nimages."
  type: Directory
  inputBinding:
    prefix: --outputFolder
- id: in_dpi
  doc: "Image resolution. By default high resolution png\nimages with a 200 dpi are\
    \ created."
  type: long
  inputBinding:
    prefix: --dpi
- id: in_matrix_two_qc_folder_slash_qc_dot_log
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Several files with be saved under this folder: A table\ncontaining the results\
    \ and a html file with several\nimages."
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
cwlVersion: v1.1
baseCommand:
- hicQC
