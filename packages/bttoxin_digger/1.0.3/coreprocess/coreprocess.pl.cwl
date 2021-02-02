class: CommandLineTool
id: coreprocess.pl.cwl
inputs:
- id: in_archive
  doc: same as -dR --preserve=all
  type: boolean
  inputBinding:
    prefix: --archive
- id: in_attributes_only
  doc: don't copy the file data, just the attributes
  type: boolean
  inputBinding:
    prefix: --attributes-only
- id: in_backup
  doc: '[=CONTROL]       make a backup of each existing destination file'
  type: boolean
  inputBinding:
    prefix: --backup
- id: in__backup_accept
  doc: like --backup but does not accept an argument
  type: boolean
  inputBinding:
    prefix: -b
- id: in_copy_contents
  doc: copy contents of special files when recursive
  type: boolean
  inputBinding:
    prefix: --copy-contents
- id: in_same__nodereference
  doc: same as --no-dereference --preserve=links
  type: boolean
  inputBinding:
    prefix: -d
- id: in_force
  doc: "if an existing destination file cannot be\nopened, remove it and try again\
    \ (this option\nis ignored when the -n option is also used)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_interactive
  doc: "prompt before overwrite (overrides a previous -n\noption)"
  type: boolean
  inputBinding:
    prefix: --interactive
- id: in_follow_commandline_links
  doc: follow command-line symbolic links in SOURCE
  type: boolean
  inputBinding:
    prefix: -H
- id: in_link
  doc: hard link files instead of copying
  type: boolean
  inputBinding:
    prefix: --link
- id: in_dereference
  doc: always follow symbolic links in SOURCE
  type: boolean
  inputBinding:
    prefix: --dereference
- id: in_no_clobber
  doc: "do not overwrite an existing file (overrides\na previous -i option)"
  type: boolean
  inputBinding:
    prefix: --no-clobber
- id: in_no_dereference
  doc: never follow symbolic links in SOURCE
  type: boolean
  inputBinding:
    prefix: --no-dereference
- id: in_same__preservemodeownershiptimestamps
  doc: same as --preserve=mode,ownership,timestamps
  type: boolean
  inputBinding:
    prefix: -p
- id: in_preserve
  doc: "[=ATTR_LIST]   preserve the specified attributes (default:\nmode,ownership,timestamps),\
    \ if possible\nadditional attributes: context, links, xattr,\nall"
  type: boolean
  inputBinding:
    prefix: --preserve
- id: in_no_preserve
  doc: don't preserve the specified attributes
  type: string
  inputBinding:
    prefix: --no-preserve
- id: in_parents
  doc: use full source file name under DIRECTORY
  type: boolean
  inputBinding:
    prefix: --parents
- id: in_recursive
  doc: copy directories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_ref_link
  doc: '[=WHEN]         control clone/CoW copies. See below'
  type: boolean
  inputBinding:
    prefix: --reflink
- id: in_remove_destination
  doc: "remove each existing destination file before\nattempting to open it (contrast\
    \ with --force)"
  type: boolean
  inputBinding:
    prefix: --remove-destination
- id: in_sparse
  doc: control creation of sparse files. See below
  type: string
  inputBinding:
    prefix: --sparse
- id: in_strip_trailing_slashes
  doc: remove any trailing slashes from each SOURCE
  type: boolean
  inputBinding:
    prefix: --strip-trailing-slashes
- id: in_suffix
  doc: override the usual backup suffix
  type: string
  inputBinding:
    prefix: --suffix
- id: in_target_directory
  doc: copy all SOURCE arguments into DIRECTORY
  type: Directory
  inputBinding:
    prefix: --target-directory
- id: in_no_target_directory
  doc: treat DEST as a normal file
  type: boolean
  inputBinding:
    prefix: --no-target-directory
- id: in_update
  doc: "copy only when the SOURCE file is newer\nthan the destination file or when\
    \ the\ndestination file is missing"
  type: boolean
  inputBinding:
    prefix: --update
- id: in_verbose
  doc: explain what is being done
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_one_file_system
  doc: stay on this file system
  type: boolean
  inputBinding:
    prefix: --one-file-system
- id: in_set_selinux_context
  doc: "set SELinux security context of destination\nfile to default type"
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_context
  doc: "[=CTX]          like -Z, or if CTX is specified then set the\nSELinux or SMACK\
    \ security context to CTX"
  type: boolean
  inputBinding:
    prefix: --context
- id: in_argument
  doc: -s, --symbolic-link          make symbolic links instead of copying
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- coreprocess.pl
