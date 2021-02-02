class: CommandLineTool
id: gsutil_rm.cwl
inputs:
- id: in_continues_silently_printing
  doc: "Continues silently (without printing error messages) despite\nerrors when\
    \ removing multiple objects. If some of the objects\ncould not be removed, gsutil's\
    \ exit status will be non-zero even\nif this flag is set. Execution will still\
    \ halt if an inaccessible\nbucket is encountered. This option is implicitly set\
    \ when running\n\"gsutil -m rm ...\"."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_causes_gsutil_read
  doc: "Causes gsutil to read the list of objects to remove from stdin.\nThis allows\
    \ you to run a program that generates the list of\nobjects to remove."
  type: boolean
  inputBinding:
    prefix: -I
- id: in_r_r_options
  doc: "The -R and -r options are synonymous. Causes bucket or bucket\nsubdirectory\
    \ contents (all objects and subdirectories that it\ncontains) to be removed recursively.\
    \ If used with a bucket-only\nURL (like gs://bucket), after deleting objects and\
    \ subdirectories\ngsutil will delete the bucket. This option implies the -a option\n\
    and will delete all object versions."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_delete_versions_object
  doc: Delete all versions of an object.
  type: boolean
  inputBinding:
    prefix: -a
- id: in_subdirectories_dot
  doc: You can also use the -r option to specify recursive object deletion. Thus,
    for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- rm
