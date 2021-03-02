class: CommandLineTool
id: ggd_install.cwl
inputs:
- id: in_channel
  doc: "The ggd channel the desired recipe is stored in.\n(Default = genomics)"
  type: string?
  inputBinding:
    prefix: --channel
- id: in_debug
  doc: "(Optional) When the -d flag is set debug output will\nbe printed to stdout."
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_file
  doc: "A file with a list of ggd data packages to install.\nOne package per line.\
    \ Can use more than one (e.g. ggd\ninstall --file <file_1> --file <file_2> )"
  type: File?
  inputBinding:
    prefix: --file
- id: in_prefix
  doc: "(Optional) The name or the full directory path to an\nexisting conda environment\
    \ where you want to install a\nggd data pacakge. (Only needed if you want to install\n\
    the data package into a different conda environment\nthen the one you are currently\
    \ in)\n"
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_name
  doc: "The data package name to install. Can use more than\nonce (e.g. ggd install\
    \ <pkg 1> <pkg 2> <pkg 3> ).\n(NOTE: No need to designate version as it is\nimplicated\
    \ in the package name)"
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
- ggd
- install
