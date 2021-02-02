class: CommandLineTool
id: runBrowser.cwl
inputs:
- id: in_config
  doc: "Configuration file with genomic tracks. (default:\nNone)"
  type: File
  inputBinding:
    prefix: --config
- id: in_port
  doc: 'Local browser port to use. (default: 8000)'
  type: long
  inputBinding:
    prefix: --port
- id: in_html_folder
  doc: "File where the template index.html file is located.\nThe default isfine unless\
    \ the contents wants to be\npersonalized. The full path has to be given. (default:\n\
    None)"
  type: Directory
  inputBinding:
    prefix: --htmlFolder
- id: in_num_processors
  doc: 'Number of processors to use. (default: 1)'
  type: long
  inputBinding:
    prefix: --numProcessors
- id: in_debug
  doc: "Set to run the server in debug mode which will print\nuseful information.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- runBrowser
