#!/usr/bin/env cwl-runner

baseCommand:
- mktemp
class: CommandLineTool
cwlVersion: v1.0
id: mktemp
inputs:
- doc: create a directory, not a file
  id: directory
  inputBinding:
    prefix: --directory
  type: boolean
- doc: do not create anything; merely print a name (unsafe)
  id: dry_run
  inputBinding:
    prefix: --dry-run
  type: boolean
- doc: suppress diagnostics about file/dir-creation failure
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: append SUFF to TEMPLATE; SUFF must not contain a slash. This option is implied
    if TEMPLATE does not end in X
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: '[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not specified, use $TMPDIR
    if set, else /tmp.  With this option, TEMPLATE must not be an absolute name; unlike
    with -t, TEMPLATE may contain slashes, but mktemp creates only the final component'
  id: tmpdir
  inputBinding:
    prefix: --tmpdir
  type: string
- doc: 'interpret TEMPLATE as a single file name component, relative to a directory:
    $TMPDIR, if set; else the directory specified via -p; else /tmp [deprecated]'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
