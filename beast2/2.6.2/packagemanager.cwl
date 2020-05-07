class: CommandLineTool
id: packagemanager.cwl
inputs:
- id: list
  doc: available packages
  type: string
  inputBinding:
    prefix: -list
- id: add
  doc: the <NAME> package
  type: string
  inputBinding:
    prefix: -add
- id: del
  doc: the <NAME> package
  type: string
  inputBinding:
    prefix: -del
- id: version
  doc: package version
  type: string
  inputBinding:
    prefix: -version
- id: use_app_dir
  doc: application (system wide) installation directory. Note this requires writing
    rights to the application directory. If not specified, the user's BEAST directory
    will be used.
  type: string
  inputBinding:
    prefix: -useAppDir
- id: dir
  doc: /uninstall package in directory <DIR>. This overrides the useAppDir option
  type: string
  inputBinding:
    prefix: -dir
- id: update
  doc: for updates, and ask to install if available
  type: string
  inputBinding:
    prefix: -update
- id: update_now
  doc: for updates and install without asking
  type: string
  inputBinding:
    prefix: -updatenow
outputs: []
cwlVersion: v1.1
baseCommand:
- packagemanager
