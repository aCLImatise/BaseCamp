class: CommandLineTool
id: drive_list.cwl
inputs:
- id: hidden
  doc: list all paths even hidden ones
  type: boolean
  inputBinding:
    prefix: -hidden
- id: id
  doc: list by id instead of path
  type: boolean
  inputBinding:
    prefix: -id
- id: long
  doc: long listing of contents
  type: boolean
  inputBinding:
    prefix: -long
- id: match_mime
  doc: get elements with the exact mimeTypes derived from extensions
  type: string
  inputBinding:
    prefix: -match-mime
- id: match_owner
  doc: elements with matching owners
  type: string
  inputBinding:
    prefix: -match-owner
- id: matches
  doc: list by prefix
  type: boolean
  inputBinding:
    prefix: -matches
- id: no_prompt
  doc: shows no prompt before pagination
  type: boolean
  inputBinding:
    prefix: -no-prompt
- id: owners
  doc: shows the owner names per file
  type: boolean
  inputBinding:
    prefix: -owners
- id: pagesize
  doc: number of results per pagination (default 100)
  type: long
  inputBinding:
    prefix: -pagesize
- id: quiet
  doc: if set, do not log anything but errors
  type: boolean
  inputBinding:
    prefix: -quiet
- id: recursive
  doc: recursively list subdirectories
  type: boolean
  inputBinding:
    prefix: -recursive
- id: shared
  doc: show files that are shared with me
  type: boolean
  inputBinding:
    prefix: -shared
- id: skip_mime
  doc: skip elements with mimeTypes derived from these extensions
  type: string
  inputBinding:
    prefix: -skip-mime
- id: skip_owner
  doc: ignore elements owned by these users
  type: string
  inputBinding:
    prefix: -skip-owner
- id: sort
  doc: sort items by a combination of attributes * modtime. * md5. * name. * size.
    * type. * version
  type: string
  inputBinding:
    prefix: -sort
- id: trashed
  doc: list content in the trash
  type: boolean
  inputBinding:
    prefix: -trashed
- id: version
  doc: show the number of times that the file has been modified on  the server even
    with changes not visible to the user
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- drive
- list
