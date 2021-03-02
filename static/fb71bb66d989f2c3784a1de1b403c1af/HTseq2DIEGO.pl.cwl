class: CommandLineTool
id: HTseq2DIEGO.pl.cwl
inputs:
- id: in_file_containing_files
  doc: "file containing input files and ids\nid [tab] path.to/file"
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file_name
  doc: output file name (default:junction_table_dexdas )
  type: File?
  inputBinding:
    prefix: -o
- id: in_usefull_help_message
  doc: this (usefull) help message
  type: File?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name (default:junction_table_dexdas )
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- HTseq2DIEGO.pl
