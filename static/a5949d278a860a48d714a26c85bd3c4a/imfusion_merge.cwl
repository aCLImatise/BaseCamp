class: CommandLineTool
id: imfusion_merge.cwl
inputs:
- id: in_sample_dirs
  doc: Path to sample directories.
  type: string[]
  inputBinding:
    prefix: --sample_dirs
- id: in_output
  doc: Output path for merged insertion file.
  type: File
  inputBinding:
    prefix: --output
- id: in_names
  doc: "Alternative sample names to use for samples in merged\ndataset."
  type: string[]
  inputBinding:
    prefix: --names
- id: in_output_expression
  doc: "Output path for merged expression file.\n"
  type: File
  inputBinding:
    prefix: --output_expression
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output path for merged insertion file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_expression
  doc: "Output path for merged expression file.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_expression)
cwlVersion: v1.1
baseCommand:
- imfusion-merge
