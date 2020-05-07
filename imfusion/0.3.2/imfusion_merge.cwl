class: CommandLineTool
id: imfusion_merge.cwl
inputs:
- id: sample_dirs
  doc: Path to sample directories.
  type: string[]
  inputBinding:
    prefix: --sample_dirs
- id: output
  doc: Output path for merged insertion file.
  type: string
  inputBinding:
    prefix: --output
- id: names
  doc: Alternative sample names to use for samples in merged dataset.
  type: string[]
  inputBinding:
    prefix: --names
- id: output_expression
  doc: Output path for merged expression file.
  type: string
  inputBinding:
    prefix: --output_expression
outputs: []
cwlVersion: v1.1
baseCommand:
- imfusion-merge
