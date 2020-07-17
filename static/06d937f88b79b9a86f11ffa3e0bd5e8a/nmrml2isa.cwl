class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nmrml2isa.cwl
inputs:
- id: input_folder_archive
  doc: input folder or archive containing nmrML files
  type: string
  inputBinding:
    prefix: -i
- id: folder_directory_created
  doc: out folder (a new directory will be created here)
  type: string
  inputBinding:
    prefix: -o
- id: study_identifier_mtblsxxx
  doc: study identifier (e.g. MTBLSxxx)
  type: string
  inputBinding:
    prefix: -s
- id: additional_user_provided
  doc: additional user provided metadata (JSON or XLSX format)
  type: string
  inputBinding:
    prefix: -m
- id: launch_different_processes
  doc: launch different processes for parsing
  type: string
  inputBinding:
    prefix: -j
- id: warning_control_python
  doc: warning control (with python default behaviour)
  type: string
  inputBinding:
    prefix: -W
- id: directory_containing_files
  doc: directory containing default template files
  type: string
  inputBinding:
    prefix: -t
- id: show_more_default
  doc: show more output (default if progressbar2 is not installed)
  type: boolean
  inputBinding:
    prefix: -v
- id: do_show_output
  doc: do not show any output
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- nmrml2isa
