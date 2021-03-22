class: CommandLineTool
id: msstitch_split.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_split_col
  doc: "Either a column number to split a PSM table on, or\n\"TD\", \"bioset\" for\
    \ splitting on target/decoy or\nbiological sample set columns (resulting from\
    \ msstitch\nperco2psm or msstitch psmtable. First column is number\n1.\n"
  type: long?
  inputBinding:
    prefix: --splitcol
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_to_output)
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msstitch:3.7--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- split
