class: CommandLineTool
id: envpath.cwl
inputs:
- id: in_append_token_path
  doc: Append TOKEN to the path variable named 'VAR'
  type: File
  inputBinding:
    prefix: -A
- id: in_newdir_change_olddir
  doc: =newdir     Change <olddir> to <newdir> within 'VAR'
  type: string
  inputBinding:
    prefix: -C
- id: in_prepend_token_path
  doc: Prepend TOKEN to the path variable named 'VAR'
  type: File
  inputBinding:
    prefix: -P
- id: in_token_insert_token
  doc: ",(-|+)TOKEN]   Insert TOKEN before (-) or after (+) 'dir' in VAR"
  type: string
  inputBinding:
    prefix: -I
- id: in_list_specified_pathvars
  doc: '[VAR]             List specified pathvar(s) in one-entry-per-line fmt'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_remove_entries_exist
  doc: Remove entries which don't exist
  type: boolean
  inputBinding:
    prefix: -N
- id: in_remove_specified_dir
  doc: Remove specified dir from path
  type: File
  inputBinding:
    prefix: -R
- id: in_print_specified_pathvars
  doc: '[VAR]             Print specified pathvars in form suitable for `eval`'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_remove_redundant_entries
  doc: Remove redundant entries from path
  type: boolean
  inputBinding:
    prefix: -U
- id: in_like__path
  doc: Like 'whence' ksh builtin - look for 'file' on PATH
  type: File
  inputBinding:
    prefix: -W
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- envpath
