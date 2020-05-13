class: CommandLineTool
id: scalap.cwl
inputs:
- id: private
  doc: print private definitions
  type: boolean
  inputBinding:
    prefix: -private
- id: verbose
  doc: print out additional information
  type: boolean
  inputBinding:
    prefix: -verbose
- id: version
  doc: print out the version number of scalap
  type: boolean
  inputBinding:
    prefix: -version
- id: classpath
  doc: specify where to find user class files
  type: File
  inputBinding:
    prefix: -classpath
- id: cp
  doc: specify where to find user class files
  type: File
  inputBinding:
    prefix: -cp
outputs: []
cwlVersion: v1.1
baseCommand:
- scalap
