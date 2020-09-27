class: CommandLineTool
id: scmap_preprocess_sce.R.cwl
inputs:
- id: in_input_object
  doc: Path to an SCE object in .rds format
  type: File
  inputBinding:
    prefix: --input-object
- id: in_output_sce_object
  doc: Path for the output object in .rds format
  type: File
  inputBinding:
    prefix: --output-sce-object
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sce_object
  doc: Path for the output object in .rds format
  type: File
  outputBinding:
    glob: $(inputs.in_output_sce_object)
cwlVersion: v1.1
baseCommand:
- scmap-preprocess-sce.R
