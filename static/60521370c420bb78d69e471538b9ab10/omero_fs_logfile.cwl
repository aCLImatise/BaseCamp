class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/omero_fs_logfile.cwl
inputs:
- id: name
  doc: return the path of the logfile within the ManagedRepository
  type: boolean
  inputBinding:
    prefix: --name
- id: size
  doc: return the size of the logfile in bytes
  type: boolean
  inputBinding:
    prefix: --size
- id: filename
  doc: Local filename to be saved to. '-' for stdout
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- fs
- logfile
