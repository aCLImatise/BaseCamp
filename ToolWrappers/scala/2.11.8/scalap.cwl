class: CommandLineTool
id: scalap.cwl
inputs:
- id: in_private
  doc: print private definitions
  type: boolean
  inputBinding:
    prefix: -private
- id: in_verbose
  doc: print out additional information
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_version
  doc: print out the version number of scalap
  type: boolean
  inputBinding:
    prefix: -version
- id: in_classpath
  doc: specify where to find user class files
  type: File
  inputBinding:
    prefix: -classpath
- id: in_cp
  doc: specify where to find user class files
  type: File
  inputBinding:
    prefix: -cp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scalap
