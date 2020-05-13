class: CommandLineTool
id: install.cwl
inputs:
- id: strip
  doc: strip symbol tables
  type: boolean
  inputBinding:
    prefix: --strip
- id: strip_program
  doc: program used to strip binaries
  type: string
  inputBinding:
    prefix: --strip-program
- id: suffix
  doc: override the usual backup suffix
  type: string
  inputBinding:
    prefix: --suffix
- id: target_directory
  doc: copy all SOURCE arguments into DIRECTORY
  type: Directory
  inputBinding:
    prefix: --target-directory
- id: no_target_directory
  doc: treat DEST as a normal file
  type: boolean
  inputBinding:
    prefix: --no-target-directory
- id: verbose
  doc: print the name of each directory as it is created
  type: boolean
  inputBinding:
    prefix: --verbose
- id: preserve_context
  doc: preserve SELinux security context
  type: boolean
  inputBinding:
    prefix: --preserve-context
- id: z
  doc: set SELinux security context of destination file to default type
  type: boolean
  inputBinding:
    prefix: -Z
- id: context
  doc: '[=CTX]     like -Z, or if CTX is specified then set the SELinux or SMACK security
    context to CTX'
  type: boolean
  inputBinding:
    prefix: --context
outputs: []
cwlVersion: v1.1
baseCommand:
- install
