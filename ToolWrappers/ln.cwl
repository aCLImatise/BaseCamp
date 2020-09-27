class: CommandLineTool
id: ln.cwl
inputs:
- id: in_backup
  doc: '[=CONTROL]      make a backup of each existing destination file'
  type: boolean
  inputBinding:
    prefix: --backup
- id: in__backup_accept
  doc: like --backup but does not accept an argument
  type: boolean
  inputBinding:
    prefix: -b
- id: in_directory
  doc: "allow the superuser to attempt to hard link\ndirectories (note: will probably\
    \ fail due to\nsystem restrictions, even for the superuser)"
  type: boolean
  inputBinding:
    prefix: --directory
- id: in_force
  doc: remove existing destination files
  type: boolean
  inputBinding:
    prefix: --force
- id: in_interactive
  doc: prompt whether to remove destinations
  type: boolean
  inputBinding:
    prefix: --interactive
- id: in_logical
  doc: dereference TARGETs that are symbolic links
  type: boolean
  inputBinding:
    prefix: --logical
- id: in_no_dereference
  doc: "treat LINK_NAME as a normal file if\nit is a symbolic link to a directory"
  type: boolean
  inputBinding:
    prefix: --no-dereference
- id: in_physical
  doc: make hard links directly to symbolic links
  type: boolean
  inputBinding:
    prefix: --physical
- id: in_relative
  doc: create symbolic links relative to link location
  type: boolean
  inputBinding:
    prefix: --relative
- id: in_symbolic
  doc: make symbolic links instead of hard links
  type: boolean
  inputBinding:
    prefix: --symbolic
- id: in_suffix
  doc: override the usual backup suffix
  type: string
  inputBinding:
    prefix: --suffix
- id: in_target_directory
  doc: "specify the DIRECTORY in which to create\nthe links"
  type: Directory
  inputBinding:
    prefix: --target-directory
- id: in_no_target_directory
  doc: treat LINK_NAME as a normal file always
  type: boolean
  inputBinding:
    prefix: --no-target-directory
- id: in_verbose
  doc: print name of each linked file
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ln
