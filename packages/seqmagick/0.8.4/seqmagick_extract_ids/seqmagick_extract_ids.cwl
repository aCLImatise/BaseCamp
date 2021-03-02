class: CommandLineTool
id: seqmagick_extract_ids.cwl
inputs:
- id: in_output_file
  doc: Destination file
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_input_format
  doc: Input format for sequence file
  type: File?
  inputBinding:
    prefix: --input-format
- id: in_include_description
  doc: "Include the sequence description in output [default:\nFalse]\n"
  type: boolean?
  inputBinding:
    prefix: --include-description
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Destination file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqmagick:0.8.4--py_1
cwlVersion: v1.1
baseCommand:
- seqmagick
- extract-ids
