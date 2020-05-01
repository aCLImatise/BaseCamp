#!/usr/bin/env cwl-runner

baseCommand:
- coreprocess.pl
class: CommandLineTool
cwlVersion: v1.0
id: coreprocess.pl
inputs:
- doc: same as -dR --preserve=all
  id: archive
  inputBinding:
    prefix: --archive
  type: boolean
- doc: don't copy the file data, just the attributes
  id: attributes_only
  inputBinding:
    prefix: --attributes-only
  type: boolean
- doc: '[=CONTROL]       make a backup of each existing destination file'
  id: backup
  inputBinding:
    prefix: --backup
  type: boolean
- doc: like --backup but does not accept an argument
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: copy contents of special files when recursive
  id: copy_contents
  inputBinding:
    prefix: --copy-contents
  type: boolean
- doc: same as --no-dereference --preserve=links
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: if an existing destination file cannot be opened, remove it and try again (this
    option is ignored when the -n option is also used)
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: prompt before overwrite (overrides a previous -n option)
  id: interactive
  inputBinding:
    prefix: --interactive
  type: boolean
- doc: follow command-line symbolic links in SOURCE
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: hard link files instead of copying
  id: link
  inputBinding:
    prefix: --link
  type: boolean
- doc: always follow symbolic links in SOURCE
  id: dereference
  inputBinding:
    prefix: --dereference
  type: boolean
- doc: do not overwrite an existing file (overrides a previous -i option)
  id: no_clobber
  inputBinding:
    prefix: --no-clobber
  type: boolean
- doc: never follow symbolic links in SOURCE
  id: no_dereference
  inputBinding:
    prefix: --no-dereference
  type: boolean
- doc: same as --preserve=mode,ownership,timestamps
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[=ATTR_LIST]   preserve the specified attributes (default: mode,ownership,timestamps),
    if possible additional attributes: context, links, xattr, all'
  id: preserve
  inputBinding:
    prefix: --preserve
  type: boolean
- doc: don't preserve the specified attributes
  id: no_preserve
  inputBinding:
    prefix: --no-preserve
  type: string
- doc: full source file name under DIRECTORY
  id: parents
  inputBinding:
    prefix: --parents
  type: string
- doc: copy directories recursively
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: '[=WHEN]         control clone/CoW copies. See below'
  id: ref_link
  inputBinding:
    prefix: --reflink
  type: boolean
- doc: remove each existing destination file before attempting to open it (contrast
    with --force)
  id: remove_destination
  inputBinding:
    prefix: --remove-destination
  type: boolean
- doc: control creation of sparse files. See below
  id: sparse
  inputBinding:
    prefix: --sparse
  type: string
- doc: remove any trailing slashes from each SOURCE argument
  id: strip_trailing_slashes
  inputBinding:
    prefix: --strip-trailing-slashes
  type: boolean
- doc: symbolic links instead of copying
  id: symbolic_link
  inputBinding:
    prefix: --symbolic-link
  type: string
- doc: override the usual backup suffix
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: copy all SOURCE arguments into DIRECTORY
  id: target_directory
  inputBinding:
    prefix: --target-directory
  type: Directory
- doc: DEST as a normal file
  id: no_target_directory
  inputBinding:
    prefix: --no-target-directory
  type: string
- doc: only when the SOURCE file is newer than the destination file or when the destination
    file is missing
  id: update
  inputBinding:
    prefix: --update
  type: string
- doc: what is being done
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
- doc: on this file system
  id: one_file_system
  inputBinding:
    prefix: --one-file-system
  type: string
- doc: set SELinux security context of destination file to default type
  id: z
  inputBinding:
    prefix: -Z
  type: boolean
- doc: '[=CTX]          like -Z, or if CTX is specified then set the SELinux or SMACK
    security context to CTX'
  id: context
  inputBinding:
    prefix: --context
  type: boolean
