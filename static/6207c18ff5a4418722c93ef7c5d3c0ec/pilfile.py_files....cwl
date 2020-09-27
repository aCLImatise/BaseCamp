class: CommandLineTool
id: pilfile.py_files....cwl
inputs:
- id: in_such_file_directory
  doc: ": [Errno 2] No such file or directory: '-h'"
  type: File
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pilfile.py
- files...
