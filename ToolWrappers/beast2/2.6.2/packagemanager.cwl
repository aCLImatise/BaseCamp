class: CommandLineTool
id: packagemanager.cwl
inputs:
- id: in_list
  doc: available packages
  type: string
  inputBinding:
    prefix: -list
- id: in_add
  doc: the <NAME> package
  type: string
  inputBinding:
    prefix: -add
- id: in_del
  doc: the <NAME> package
  type: string
  inputBinding:
    prefix: -del
- id: in_version
  doc: package version
  type: string
  inputBinding:
    prefix: -version
- id: in_use_app_dir
  doc: application (system wide) installation directory. Note this requires writing
    rights to the application directory. If not specified, the user's BEAST directory
    will be used.
  type: Directory
  inputBinding:
    prefix: -useAppDir
- id: in_dir
  doc: package in directory <DIR>. This overrides the useAppDir option
  type: Directory
  inputBinding:
    prefix: -dir
- id: in_update
  doc: for updates, and ask to install if available
  type: string
  inputBinding:
    prefix: -update
- id: in_update_now
  doc: for updates and install without asking
  type: string
  inputBinding:
    prefix: -updatenow
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- packagemanager
