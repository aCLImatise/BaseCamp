class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ggd_install.cwl
inputs:
- id: channel
  doc: The ggd channel the desired recipe is stored in. (Default = genomics)
  type: string
  inputBinding:
    prefix: --channel
- id: debug
  doc: (Optional) When the -d flag is set debug output will be printed to stdout.
  type: boolean
  inputBinding:
    prefix: --debug
- id: file
  doc: A file with a list of ggd data packages to install. One package per line. Can
    use more than one (e.g. ggd install --file <file_1> --file <file_2> )
  type: File
  inputBinding:
    prefix: --file
- id: prefix
  doc: (Optional) The name or the full directory path to an existing conda environment
    where you want to install a ggd data pacakge. (Only needed if you want to install
    the data package into a different conda environment then the one you are currently
    in)
  type: string
  inputBinding:
    prefix: --prefix
- id: name
  doc: 'The data package name to install. Can use more than once (e.g. ggd install
    <pkg 1> <pkg 2> <pkg 3> ). (NOTE: No need to designate version as it is implicated
    in the package name)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- install
