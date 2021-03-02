class: CommandLineTool
id: easydev_buildPackage.cwl
inputs:
- id: in_pkgname
  doc: Name of the package to be created
  type: string?
  inputBinding:
    prefix: --pkgname
- id: in_package
  doc: Name of the package to be created
  type: string?
  inputBinding:
    prefix: --package
- id: in_namespace
  doc: If provided, creates a namespace.
  type: string?
  inputBinding:
    prefix: --namespace
- id: in_no_share_directory
  doc: if five, the share directory is not created
  type: boolean?
  inputBinding:
    prefix: --no-share-directory
- id: in_verbosity
  doc: "set verbosity to INFO, WARNING or ERROR\n"
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- easydev_buildPackage
