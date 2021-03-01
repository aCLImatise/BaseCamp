class: CommandLineTool
id: drive_du.cwl
inputs:
- id: in_depth
  doc: maximum recursion depth (default 1)
  type: long?
  inputBinding:
    prefix: -depth
- id: in_directories
  doc: list all directories
  type: boolean?
  inputBinding:
    prefix: -directories
- id: in_exact_owner
  doc: elements with the exact owner
  type: string?
  inputBinding:
    prefix: -exact-owner
- id: in_exact_title
  doc: get elements with the exact titles
  type: string?
  inputBinding:
    prefix: -exact-title
- id: in_files
  doc: list only files
  type: boolean?
  inputBinding:
    prefix: -files
- id: in_id
  doc: list by id instead of path
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_long
  doc: long listing of contents
  type: boolean?
  inputBinding:
    prefix: -long
- id: in_match_mime
  doc: get elements with the exact mimeTypes derived from extensions
  type: string?
  inputBinding:
    prefix: -match-mime
- id: in_match_owner
  doc: elements with matching owners
  type: string?
  inputBinding:
    prefix: -match-owner
- id: in_matches
  doc: list by prefix
  type: boolean?
  inputBinding:
    prefix: -matches
- id: in_no_prompt
  doc: shows no prompt before pagination
  type: boolean?
  inputBinding:
    prefix: -no-prompt
- id: in_owners
  doc: shows the owner names per file
  type: boolean?
  inputBinding:
    prefix: -owners
- id: in_pagesize
  doc: number of results per pagination (default 100)
  type: long?
  inputBinding:
    prefix: -pagesize
- id: in_quiet
  doc: if set, do not log anything but errors
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_recursive
  doc: recursively list subdirectories
  type: boolean?
  inputBinding:
    prefix: -recursive
- id: in_shared
  doc: show files that are shared with me
  type: boolean?
  inputBinding:
    prefix: -shared
- id: in_skip_mime
  doc: skip elements with mimeTypes derived from these extensions
  type: string?
  inputBinding:
    prefix: -skip-mime
- id: in_skip_owner
  doc: ignore elements owned by these users
  type: string?
  inputBinding:
    prefix: -skip-owner
- id: in_sort
  doc: "sort items by a combination of attributes\n* modtime.\n* md5.\n* name.\n*\
    \ size.\n* type.\n* version"
  type: long?
  inputBinding:
    prefix: -sort
- id: in_trashed
  doc: list content in the trash
  type: boolean?
  inputBinding:
    prefix: -trashed
- id: in_version
  doc: "show the number of times that the file has been modified on\nthe server even\
    \ with changes not visible to the user\n"
  type: boolean?
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- du
