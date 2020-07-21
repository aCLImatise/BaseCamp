class: CommandLineTool
id: ../../../envpath.cwl
inputs:
- id: prepend_token_path
  doc: Prepend TOKEN to the path variable named 'VAR'
  type: string
  inputBinding:
    prefix: -P
- id: token_insert_token
  doc: ",(-|+)TOKEN]   Insert TOKEN before (-) or after (+) 'dir' in VAR"
  type: string
  inputBinding:
    prefix: -I
- id: list_specified_pathvars
  doc: '[VAR]             List specified pathvar(s) in one-entry-per-line fmt'
  type: boolean
  inputBinding:
    prefix: -L
- id: remove_entries_exist
  doc: Remove entries which don't exist
  type: boolean
  inputBinding:
    prefix: -N
- id: remove_specified_dir
  doc: Remove specified dir from path
  type: string
  inputBinding:
    prefix: -R
- id: print_specified_pathvars
  doc: '[VAR]             Print specified pathvars in form suitable for `eval`'
  type: boolean
  inputBinding:
    prefix: -S
- id: remove_redundant_entries
  doc: Remove redundant entries from path
  type: boolean
  inputBinding:
    prefix: -U
- id: like__path
  doc: Like 'whence' ksh builtin - look for 'file' on PATH
  type: File
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- envpath
