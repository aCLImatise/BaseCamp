class: CommandLineTool
id: nmrml2isa.cwl
inputs:
- id: in_input_folder_archive
  doc: input folder or archive containing nmrML files
  type: File?
  inputBinding:
    prefix: -i
- id: in_folder_new_directory
  doc: out folder (a new directory will be created here)
  type: File?
  inputBinding:
    prefix: -o
- id: in_study_identifier_mtblsxxx
  doc: study identifier (e.g. MTBLSxxx)
  type: string?
  inputBinding:
    prefix: -s
- id: in_additional_user_provided
  doc: "additional user provided metadata (JSON or XLSX\nformat)"
  type: string?
  inputBinding:
    prefix: -m
- id: in_launch_different_processes
  doc: launch different processes for parsing
  type: string?
  inputBinding:
    prefix: -j
- id: in_warning_control_python
  doc: warning control (with python default behaviour)
  type: string?
  inputBinding:
    prefix: -W
- id: in_directory_containing_files
  doc: directory containing default template files
  type: Directory?
  inputBinding:
    prefix: -t
- id: in_show_more_default
  doc: "show more output (default if progressbar2 is not\ninstalled)"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_do_show_output
  doc: do not show any output
  type: boolean?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_folder_new_directory
  doc: out folder (a new directory will be created here)
  type: File?
  outputBinding:
    glob: $(inputs.in_folder_new_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- nmrml2isa
