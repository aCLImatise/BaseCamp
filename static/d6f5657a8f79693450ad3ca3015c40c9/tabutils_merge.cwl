class: CommandLineTool
id: tabutils_merge.cwl
inputs:
- id: in_header_comment
  doc: the header is last commented line ('#')
  type: boolean?
  inputBinding:
    prefix: -headercomment
- id: in_noheader
  doc: the files have no header row
  type: boolean?
  inputBinding:
    prefix: -noheader
- id: in_no_missing
  doc: discard rows with missing values
  type: boolean?
  inputBinding:
    prefix: -nomissing
- id: in_collate
  doc: order uncommon values by file first, not column
  type: boolean?
  inputBinding:
    prefix: -collate
- id: in_key_cols
  doc: ",col   if there are missing values, use these columns to\ndetermine which\
    \ file has missing data.  If the col ends\nin 'n', this is taken to be a number.\n\
    (defaults to common cols, in order)"
  type: long?
  inputBinding:
    prefix: -keycols
- id: in_key_desc
  doc: "keys are sorted descending order\n(defaults to ascending)"
  type: boolean?
  inputBinding:
    prefix: -keydesc
- id: in_tab_merge_do_tpy
  doc: ''
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
- tabutils
- merge
