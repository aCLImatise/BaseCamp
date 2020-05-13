class: CommandLineTool
id: scmap_preprocess_sce.R.cwl
inputs:
- id: input_object
  doc: Path to an SCE object in .rds format
  type: string
  inputBinding:
    prefix: --input-object
- id: output_sce_object
  doc: Path for the output object in .rds format
  type: string
  inputBinding:
    prefix: --output-sce-object
outputs: []
cwlVersion: v1.1
baseCommand:
- scmap-preprocess-sce.R
