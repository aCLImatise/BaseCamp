class: CommandLineTool
id: mzml2isa.cwl
inputs:
- id: in_input_folder_archive
  doc: input folder or archive containing mzML files
  type: File
  inputBinding:
    prefix: -i
- id: in_folder_new_files
  doc: out folder (new files will be created here)
  type: File
  inputBinding:
    prefix: -o
- id: in_study_identifier_eg
  doc: study identifier (e.g. MTBLSxxx)
  type: string
  inputBinding:
    prefix: -s
- id: in_additional_user_provided
  doc: additional user provided metadata (JSON format)
  type: string
  inputBinding:
    prefix: -m
- id: in_launch_different_processes
  doc: launch different processes for parsing
  type: string
  inputBinding:
    prefix: -j
- id: in_not_split_files
  doc: do NOT split assay files based on polarity
  type: boolean
  inputBinding:
    prefix: -n
- id: in_not_group_centroid
  doc: do NOT group centroid & profile samples
  type: boolean
  inputBinding:
    prefix: -c
- id: in_warning_control_python
  doc: warning control (with python default behaviour)
  type: string
  inputBinding:
    prefix: -W
- id: in_directory_containing_files
  doc: directory containing default template files
  type: Directory
  inputBinding:
    prefix: -t
- id: in_show_more_default
  doc: show more output (default if tqdm is not installed)
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_folder_new_files
  doc: out folder (new files will be created here)
  type: File
  outputBinding:
    glob: $(inputs.in_folder_new_files)
cwlVersion: v1.1
baseCommand:
- mzml2isa
