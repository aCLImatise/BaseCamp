class: CommandLineTool
id: gsutil_rewrite.cwl
inputs:
- id: in_continues_silently_printing
  doc: "Continues silently (without printing error messages) despite\nerrors when\
    \ rewriting multiple objects. If some of the objects\ncould not be rewritten,\
    \ gsutil's exit status will be non-zero\neven if this flag is set. This option\
    \ is implicitly set when\nrunning \"gsutil -m rewrite ...\"."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_causes_gsutil_read
  doc: "Causes gsutil to read the list of objects to rewrite from stdin.\nThis allows\
    \ you to run a program that generates the list of\nobjects to rewrite."
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_rewrite_objects_file
  doc: "Rewrite the objects to the current encryption key specific in\nyour boto configuration\
    \ file. If encryption_key is specified,\nencrypt all objects with this key. If\
    \ encryption_key is\nunspecified, decrypt all objects. See `gsutil help encryption`\n\
    for details on encryption configuration."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_rewrite_objects_buckets
  doc: "Rewrite objects with the bucket's default object ACL instead of\nthe existing\
    \ object ACL. This is needed if you do not have\nOWNER permission on the object."
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_r_r_options
  doc: "The -R and -r options are synonymous. Causes bucket or bucket\nsubdirectory\
    \ contents to be rewritten recursively."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_rewrite_objects_using
  doc: Rewrite objects using the specified storage class.
  type: string?
  inputBinding:
    prefix: -s
- id: in_objects_dot
  doc: "For example, the command:\ngsutil rewrite -k gs://bucket/**"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gsutil
- rewrite
