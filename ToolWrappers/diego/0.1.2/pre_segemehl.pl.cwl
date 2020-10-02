class: CommandLineTool
id: pre_segemehl.pl.cwl
inputs:
- id: in_file_containing_files
  doc: "file containing input files and ids\nid [tab] path.to/file"
  type: File
  inputBinding:
    prefix: -l
- id: in_diegoformated_annotation_file
  doc: DIEGO-formated annotation file
  type: File
  inputBinding:
    prefix: -a
- id: in_output_file_name
  doc: output file name (default:junction_table_DIEGO )
  type: File
  inputBinding:
    prefix: -o
- id: in_usefull_help_message
  doc: this (usefull) help message
  type: File
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name (default:junction_table_DIEGO )
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- pre_segemehl.pl
