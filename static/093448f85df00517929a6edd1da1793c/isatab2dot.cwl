class: CommandLineTool
id: isatab2dot.cwl
inputs:
- id: in_investigation_file
  doc: Path to investigation file
  type: File?
  inputBinding:
    prefix: --investigation-file
- id: in_output_file
  doc: "Path to output file, stdout (\"-\") by default\n"
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Path to output file, stdout (\"-\") by default\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- isatab2dot
