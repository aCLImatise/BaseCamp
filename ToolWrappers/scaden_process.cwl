class: CommandLineTool
id: scaden_process.cwl
inputs:
- id: in_processed_path
  doc: Path of processed file. Must end with .h5ad
  type: File
  inputBinding:
    prefix: --processed_path
- id: in_var_cut_off
  doc: "Filter out genes with a variance less than the\nspecified cutoff. A low cutoff\
    \ is recommended,this\nshould only remove genes that are obviously\nuninformative."
  type: double
  inputBinding:
    prefix: --var_cutoff
- id: in_training_dataset_to_be_processed
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scaden
- process
