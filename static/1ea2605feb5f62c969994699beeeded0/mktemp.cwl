class: CommandLineTool
id: mktemp.cwl
inputs:
- id: in_directory
  doc: create a directory, not a file
  type: boolean
  inputBinding:
    prefix: --directory
- id: in_dry_run
  doc: do not create anything; merely print a name (unsafe)
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_quiet
  doc: suppress diagnostics about file/dir-creation failure
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_suffix
  doc: "append SUFF to TEMPLATE; SUFF must not contain a slash.\nThis option is implied\
    \ if TEMPLATE does not end in X"
  type: string
  inputBinding:
    prefix: --suffix
- id: in_tmpdir
  doc: "[=DIR]  interpret TEMPLATE relative to DIR; if DIR is not\nspecified, use\
    \ $TMPDIR if set, else /tmp.  With\nthis option, TEMPLATE must not be an absolute\
    \ name;\nunlike with -t, TEMPLATE may contain slashes, but\nmktemp creates only\
    \ the final component"
  type: string
  inputBinding:
    prefix: --tmpdir
- id: in_interpret_template_set
  doc: "interpret TEMPLATE as a single file name component,\nrelative to a directory:\
    \ $TMPDIR, if set; else the\ndirectory specified via -p; else /tmp [deprecated]"
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mktemp
