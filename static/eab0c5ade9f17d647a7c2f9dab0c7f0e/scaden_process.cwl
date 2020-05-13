class: CommandLineTool
id: scaden_process.cwl
inputs:
- id: processed_path
  doc: Path of processed file. Must end with .h5ad
  type: string
  inputBinding:
    prefix: --processed_path
- id: var_cut_off
  doc: Filter out genes with a variance less than the specified cutoff. A low cutoff
    is recommended,this should only remove genes that are obviously uninformative.
  type: double
  inputBinding:
    prefix: --var_cutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- scaden
- process
