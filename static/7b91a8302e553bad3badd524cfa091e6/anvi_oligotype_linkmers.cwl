class: CommandLineTool
id: anvi_oligotype_linkmers.cwl
inputs:
- id: in_input_file
  doc: Output file of `anvi-report-linkmers`.
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_dir
  doc: "Directory path for output files\n"
  type: File?
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_file
  doc: Output file of `anvi-report-linkmers`.
  type: File?
  outputBinding:
    glob: $(inputs.in_input_file)
- id: out_output_dir
  doc: "Directory path for output files\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-oligotype-linkmers
