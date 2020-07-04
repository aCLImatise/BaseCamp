class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pre_segemehl.pl.cwl
inputs:
- id: file_containing_files
  doc: file containing input files and ids id [tab] path.to/file
  type: File
  inputBinding:
    prefix: -l
- id: diegoformated_annotation_file
  doc: 'DIEGO-formated annotation file '
  type: File
  inputBinding:
    prefix: -a
- id: output_file_name
  doc: output file name (default:junction_table_DIEGO )
  type: File
  inputBinding:
    prefix: -o
- id: usefull_help_message
  doc: this (usefull) help message
  type: File
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- pre_segemehl.pl
