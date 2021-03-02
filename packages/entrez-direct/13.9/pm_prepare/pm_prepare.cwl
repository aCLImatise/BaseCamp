class: CommandLineTool
id: pm_prepare.cwl
inputs:
- id: in_mode
  doc: set file mode (as in chmod), not a=rwx - umask
  type: File?
  inputBinding:
    prefix: --mode
- id: in_parents
  doc: no error if existing, make parent directories as needed
  type: boolean?
  inputBinding:
    prefix: --parents
- id: in_verbose
  doc: print a message for each created directory
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_set_security_context
  doc: "set SELinux security context of each created directory\nto the default type"
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_context
  doc: "[=CTX]  like -Z, or if CTX is specified then set the SELinux\nor SMACK security\
    \ context to CTX"
  type: boolean?
  inputBinding:
    prefix: --context
- id: in_mkdir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1
cwlVersion: v1.1
baseCommand:
- pm-prepare
