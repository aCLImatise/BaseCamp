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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/altamisa:0.2.8--py_0
cwlVersion: v1.1
baseCommand:
- isatab2dot
