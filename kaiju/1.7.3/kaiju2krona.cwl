class: CommandLineTool
id: ../../../kaiju2krona.cwl
inputs:
- id: name_input_file
  doc: Name of input file
  type: File
  inputBinding:
    prefix: -i
- id: name_output_file
  doc: Name of output file.
  type: File
  inputBinding:
    prefix: -o
- id: name_nodesdmp_file
  doc: Name of nodes.dmp file
  type: File
  inputBinding:
    prefix: -t
- id: name_namesdmp_file
  doc: Name of names.dmp file
  type: File
  inputBinding:
    prefix: -n
- id: enable_verbose_output
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: -v
- id: include_count_unclassified
  doc: Include count for unclassified reads in output.
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju2krona
