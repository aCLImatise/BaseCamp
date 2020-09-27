class: CommandLineTool
id: gsutil_acl.cwl
inputs:
- id: in_u
  doc: :<perm>
  type: string
  inputBinding:
    prefix: -u
- id: in_g
  doc: :<perm>
  type: string
  inputBinding:
    prefix: -g
- id: in_project_number
  doc: -<project number>
  type: long
  inputBinding:
    prefix: -p
- id: in_idemaildomainallallauthviewerseditorsownersproject_number
  doc: <id|email|domain|All|AllAuth|<viewers|editors|owners>-<project number>>
  type: boolean
  inputBinding:
    prefix: -d
- id: in_performs_request_recursively
  doc: "Performs \"acl set\" request recursively, to all objects under\nthe specified\
    \ URL."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_performs_request_object
  doc: Performs "acl set" request on all object versions.
  type: boolean
  inputBinding:
    prefix: -a
- id: in_normally_gsutil_stops
  doc: "Normally gsutil stops at the first error. The -f option causes\nit to continue\
    \ when it encounters errors. If some of the ACLs\ncouldn't be set, gsutil's exit\
    \ status will be non-zero even if\nthis flag is set. This option is implicitly\
    \ set when running\n\"gsutil -m acl...\"."
  type: boolean
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- acl
