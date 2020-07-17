class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/install_slam.sh.cwl
inputs:
- id: mode
  doc: set file mode (as in chmod), not a=rwx - umask
  type: string
  inputBinding:
    prefix: --mode
- id: parents
  doc: no error if existing, make parent directories as needed
  type: boolean
  inputBinding:
    prefix: --parents
- id: verbose
  doc: print a message for each created directory
  type: boolean
  inputBinding:
    prefix: --verbose
- id: set_selinux_context
  doc: set SELinux security context of each created directory to the default type
  type: boolean
  inputBinding:
    prefix: -Z
- id: context
  doc: '[=CTX]  like -Z, or if CTX is specified then set the SELinux or SMACK security
    context to CTX'
  type: boolean
  inputBinding:
    prefix: --context
- id: force_symbolic_links
  doc: "force symbolic links to be followed: resolve symbolic links in DIR after processing\
    \ instances of `..'"
  type: boolean
  inputBinding:
    prefix: -L
- id: use_physical_structure
  doc: "use the physical directory structure without following symbolic links: resolve\
    \ symbolic links in DIR before processing instances of `..'"
  type: boolean
  inputBinding:
    prefix: -P
- id: p_option_supplied
  doc: if the -P option is supplied, and the current working directory cannot be determined
    successfully, exit with a non-zero status
  type: boolean
  inputBinding:
    prefix: -e
- id: at
  doc: on systems that support it, present a file with extended attributes as a directory
    containing the file attributes
  type: boolean
  inputBinding:
    prefix: -@
- id: mkdir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- install_slam.sh
