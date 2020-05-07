class: CommandLineTool
id: coreprocess.pl.cwl
inputs:
- id: archive
  doc: same as -dR --preserve=all
  type: boolean
  inputBinding:
    prefix: --archive
- id: attributes_only
  doc: don't copy the file data, just the attributes
  type: boolean
  inputBinding:
    prefix: --attributes-only
- id: backup
  doc: '[=CONTROL]       make a backup of each existing destination file'
  type: boolean
  inputBinding:
    prefix: --backup
- id: b
  doc: like --backup but does not accept an argument
  type: boolean
  inputBinding:
    prefix: -b
- id: copy_contents
  doc: copy contents of special files when recursive
  type: boolean
  inputBinding:
    prefix: --copy-contents
- id: d
  doc: same as --no-dereference --preserve=links
  type: boolean
  inputBinding:
    prefix: -d
- id: force
  doc: if an existing destination file cannot be opened, remove it and try again (this
    option is ignored when the -n option is also used)
  type: boolean
  inputBinding:
    prefix: --force
- id: interactive
  doc: prompt before overwrite (overrides a previous -n option)
  type: boolean
  inputBinding:
    prefix: --interactive
- id: h
  doc: follow command-line symbolic links in SOURCE
  type: boolean
  inputBinding:
    prefix: -H
- id: link
  doc: hard link files instead of copying
  type: boolean
  inputBinding:
    prefix: --link
- id: dereference
  doc: always follow symbolic links in SOURCE
  type: boolean
  inputBinding:
    prefix: --dereference
- id: no_clobber
  doc: do not overwrite an existing file (overrides a previous -i option)
  type: boolean
  inputBinding:
    prefix: --no-clobber
- id: no_dereference
  doc: never follow symbolic links in SOURCE
  type: boolean
  inputBinding:
    prefix: --no-dereference
- id: p
  doc: same as --preserve=mode,ownership,timestamps
  type: boolean
  inputBinding:
    prefix: -p
- id: preserve
  doc: '[=ATTR_LIST]   preserve the specified attributes (default: mode,ownership,timestamps),
    if possible additional attributes: context, links, xattr, all'
  type: boolean
  inputBinding:
    prefix: --preserve
- id: no_preserve
  doc: don't preserve the specified attributes
  type: string
  inputBinding:
    prefix: --no-preserve
- id: parents
  doc: full source file name under DIRECTORY
  type: string
  inputBinding:
    prefix: --parents
- id: recursive
  doc: copy directories recursively
  type: boolean
  inputBinding:
    prefix: --recursive
- id: ref_link
  doc: '[=WHEN]         control clone/CoW copies. See below'
  type: boolean
  inputBinding:
    prefix: --reflink
- id: remove_destination
  doc: remove each existing destination file before attempting to open it (contrast
    with --force)
  type: boolean
  inputBinding:
    prefix: --remove-destination
- id: sparse
  doc: control creation of sparse files. See below
  type: string
  inputBinding:
    prefix: --sparse
- id: strip_trailing_slashes
  doc: remove any trailing slashes from each SOURCE argument
  type: boolean
  inputBinding:
    prefix: --strip-trailing-slashes
- id: symbolic_link
  doc: symbolic links instead of copying
  type: string
  inputBinding:
    prefix: --symbolic-link
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
  doc: DEST as a normal file
  type: string
  inputBinding:
    prefix: --no-target-directory
- id: update
  doc: only when the SOURCE file is newer than the destination file or when the destination
    file is missing
  type: string
  inputBinding:
    prefix: --update
- id: verbose
  doc: what is being done
  type: string
  inputBinding:
    prefix: --verbose
- id: one_file_system
  doc: on this file system
  type: string
  inputBinding:
    prefix: --one-file-system
- id: z
  doc: set SELinux security context of destination file to default type
  type: boolean
  inputBinding:
    prefix: -Z
- id: context
  doc: '[=CTX]          like -Z, or if CTX is specified then set the SELinux or SMACK
    security context to CTX'
  type: boolean
  inputBinding:
    prefix: --context
outputs: []
cwlVersion: v1.1
baseCommand:
- coreprocess.pl
