class: CommandLineTool
id: kaiju2krona.cwl
inputs:
- id: in_name_input_file
  doc: Name of input file
  type: File?
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_name_nodesdmp_file
  doc: Name of nodes.dmp file
  type: File?
  inputBinding:
    prefix: -t
- id: in_name_namesdmp_file
  doc: Name of names.dmp file
  type: File?
  inputBinding:
    prefix: -n
- id: in_enable_verbose_output
  doc: Enable verbose output.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_include_count_unclassified
  doc: Include count for unclassified reads in output.
  type: boolean?
  inputBinding:
    prefix: -u
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- kaiju2krona
