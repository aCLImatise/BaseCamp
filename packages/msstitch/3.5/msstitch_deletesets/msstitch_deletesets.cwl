class: CommandLineTool
id: msstitch_deletesets.cwl
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
- id: in_dbfile
  doc: Database lookup file
  type: File?
  inputBinding:
    prefix: --dbfile
- id: in_set_names
  doc: "Names of biological sets. Can be specified with\nquotation marks if spaces\
    \ are used\n"
  type: string[]
  inputBinding:
    prefix: --setnames
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
  dockerPull: quay.io/biocontainers/msstitch:3.5--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- deletesets
