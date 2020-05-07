class: CommandLineTool
id: envpath.cwl
inputs:
- id: a
  doc: Append TOKEN to the path variable named 'VAR'
  type: string
  inputBinding:
    prefix: -A
- id: c
  doc: =newdir     Change <olddir> to <newdir> within 'VAR'
  type: string
  inputBinding:
    prefix: -C
- id: p
  doc: Prepend TOKEN to the path variable named 'VAR'
  type: string
  inputBinding:
    prefix: -P
- id: i
  doc: ",(-|+)TOKEN]   Insert TOKEN before (-) or after (+) 'dir' in VAR"
  type: string
  inputBinding:
    prefix: -I
- id: l
  doc: '[VAR]             List specified pathvar(s) in one-entry-per-line fmt'
  type: boolean
  inputBinding:
    prefix: -L
- id: n
  doc: Remove entries which don't exist
  type: boolean
  inputBinding:
    prefix: -N
- id: r
  doc: Remove specified dir from path
  type: string
  inputBinding:
    prefix: -R
- id: s
  doc: '[VAR]             Print specified pathvars in form suitable for `eval`'
  type: boolean
  inputBinding:
    prefix: -S
- id: u
  doc: Remove redundant entries from path
  type: boolean
  inputBinding:
    prefix: -U
- id: w
  doc: Like 'whence' ksh builtin - look for 'file' on PATH
  type: File
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- envpath
