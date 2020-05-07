class: CommandLineTool
id: gsutil_help_rm.cwl
inputs:
- id: f
  doc: Continues silently (without printing error messages) despite errors when removing
    multiple objects. If some of the objects could not be removed, gsutil's exit status
    will be non-zero even if this flag is set. Execution will still halt if an inaccessible
    bucket is encountered. This option is implicitly set when running "gsutil -m rm
    ...".
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: Causes gsutil to read the list of objects to remove from stdin. This allows
    you to run a program that generates the list of objects to remove.
  type: boolean
  inputBinding:
    prefix: -I
- id: r
  doc: The -R and -r options are synonymous. Causes bucket or bucket subdirectory
    contents (all objects and subdirectories that it contains) to be removed recursively.
    If used with a bucket-only URL (like gs://bucket), after deleting objects and
    subdirectories gsutil will delete the bucket. This option implies the -a option
    and will delete all object versions.
  type: boolean
  inputBinding:
    prefix: -R
- id: a
  doc: Delete all versions of an object.
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- rm
