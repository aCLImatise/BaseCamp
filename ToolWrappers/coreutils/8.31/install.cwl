class: CommandLineTool
id: install.cwl
inputs:
- id: in_backup
  doc: '[=CONTROL]  make a backup of each existing destination file'
  type: boolean?
  inputBinding:
    prefix: --backup
- id: in__backup_accept
  doc: like --backup but does not accept an argument
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_ignored
  doc: (ignored)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_compare
  doc: "compare each pair of source and destination files, and\nin some cases, do\
    \ not modify the destination at all"
  type: boolean?
  inputBinding:
    prefix: --compare
- id: in_directory
  doc: "treat all arguments as directory names; create all\ncomponents of the specified\
    \ directories"
  type: boolean?
  inputBinding:
    prefix: --directory
- id: in_create_leading_components
  doc: "create all leading components of DEST except the last,\nor all components\
    \ of --target-directory,\nthen copy SOURCE to DEST"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_group
  doc: set group ownership, instead of process' current group
  type: string?
  inputBinding:
    prefix: --group
- id: in_mode
  doc: set permission mode (as in chmod), instead of rwxr-xr-x
  type: string?
  inputBinding:
    prefix: --mode
- id: in_owner
  doc: set ownership (super-user only)
  type: string?
  inputBinding:
    prefix: --owner
- id: in_preserve_timestamps
  doc: "apply access/modification times of SOURCE files\nto corresponding destination\
    \ files"
  type: boolean?
  inputBinding:
    prefix: --preserve-timestamps
- id: in_strip
  doc: strip symbol tables
  type: boolean?
  inputBinding:
    prefix: --strip
- id: in_strip_program
  doc: program used to strip binaries
  type: string?
  inputBinding:
    prefix: --strip-program
- id: in_suffix
  doc: override the usual backup suffix
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_target_directory
  doc: copy all SOURCE arguments into DIRECTORY
  type: Directory?
  inputBinding:
    prefix: --target-directory
- id: in_no_target_directory
  doc: treat DEST as a normal file
  type: boolean?
  inputBinding:
    prefix: --no-target-directory
- id: in_verbose
  doc: print the name of each directory as it is created
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_preserve_context
  doc: preserve SELinux security context
  type: boolean?
  inputBinding:
    prefix: --preserve-context
- id: in_set_security_context
  doc: "set SELinux security context of destination\nfile and each created directory\
    \ to default type"
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_context
  doc: "[=CTX]     like -Z, or if CTX is specified then set the\nSELinux or SMACK\
    \ security context to CTX"
  type: boolean?
  inputBinding:
    prefix: --context
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- install
