class: CommandLineTool
id: mktemp.cwl
inputs:
- id: directory
  doc: create a directory, not a file
  type: boolean
  inputBinding:
    prefix: --directory
- id: dry_run
  doc: do not create anything; merely print a name (unsafe)
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: quiet
  doc: suppress diagnostics about file/dir-creation failure
  type: boolean
  inputBinding:
    prefix: --quiet
- id: suffix
  doc: append SUFF to TEMPLATE; SUFF must not contain a slash. This option is implied
    if TEMPLATE does not end in X
  type: string
  inputBinding:
    prefix: --suffix
- id: tmpdir
  doc: '[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not specified, use $TMPDIR
    if set, else /tmp.  With this option, TEMPLATE must not be an absolute name; unlike
    with -t, TEMPLATE may contain slashes, but mktemp creates only the final component'
  type: string
  inputBinding:
    prefix: --tmpdir
- id: t
  doc: 'interpret TEMPLATE as a single file name component, relative to a directory:
    $TMPDIR, if set; else the directory specified via -p; else /tmp [deprecated]'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- mktemp
