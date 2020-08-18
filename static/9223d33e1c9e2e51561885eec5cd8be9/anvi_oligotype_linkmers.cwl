class: CommandLineTool
id: ../../../anvi_oligotype_linkmers.cwl
inputs:
- id: input_file
  doc: Output file of `anvi-report-linkmers`.
  type: string
  inputBinding:
    prefix: --input-file
- id: output_dir
  doc: Directory path for output files
  type: string
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-oligotype-linkmers
