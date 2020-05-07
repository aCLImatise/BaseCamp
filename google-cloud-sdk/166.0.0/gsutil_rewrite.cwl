class: CommandLineTool
id: gsutil_rewrite.cwl
inputs:
- id: f
  doc: Continues silently (without printing error messages) despite errors when rewriting
    multiple objects. If some of the objects could not be rewritten, gsutil's exit
    status will be non-zero even if this flag is set. This option is implicitly set
    when running "gsutil -m rewrite ...".
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: Causes gsutil to read the list of objects to rewrite from stdin. This allows
    you to run a program that generates the list of objects to rewrite.
  type: boolean
  inputBinding:
    prefix: -I
- id: k
  doc: Rewrite the objects to the current encryption key specific in your boto configuration
    file. If encryption_key is specified, encrypt all objects with this key. If encryption_key
    is unspecified, decrypt all objects. See `gsutil help encryption` for details
    on encryption configuration.
  type: boolean
  inputBinding:
    prefix: -k
- id: o
  doc: Rewrite objects with the bucket's default object ACL instead of the existing
    object ACL. This is needed if you do not have OWNER permission on the object.
  type: boolean
  inputBinding:
    prefix: -O
- id: r
  doc: The -R and -r options are synonymous. Causes bucket or bucket subdirectory
    contents to be rewritten recursively.
  type: boolean
  inputBinding:
    prefix: -R
- id: s
  doc: Rewrite objects using the specified storage class.
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- rewrite
