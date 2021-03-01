class: CommandLineTool
id: pm_merge.cwl
inputs:
- id: in_follow
  doc: Follow symlinks
  type: boolean?
  inputBinding:
    prefix: -follow
- id: in_command_line_only
  doc: '...on command line only'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_x_dev
  doc: Don't descend directories on other filesystems
  type: boolean?
  inputBinding:
    prefix: -xdev
- id: in_maxdepth
  doc: "Descend at most N levels. -maxdepth 0 applies\nactions to command line arguments\
    \ only"
  type: long?
  inputBinding:
    prefix: -maxdepth
- id: in_min_depth
  doc: Don't act on first N levels
  type: string?
  inputBinding:
    prefix: -mindepth
- id: in_depth
  doc: Act on directory *after* traversing it
  type: boolean?
  inputBinding:
    prefix: -depth
- id: in_higher_priority_o
  doc: higher priority than -o
  type: string?
  inputBinding:
    prefix: -a
- id: in_name
  doc: Match file name (w/o directory name) to PATTERN
  type: File?
  inputBinding:
    prefix: -name
- id: in_i_name
  doc: Case insensitive -name
  type: string?
  inputBinding:
    prefix: -iname
- id: in_match_path_pattern
  doc: Match path to PATTERN
  type: File?
  inputBinding:
    prefix: -path
- id: in_ipath
  doc: Case insensitive -path
  type: File?
  inputBinding:
    prefix: -ipath
- id: in_regex
  doc: Match path to regex PATTERN
  type: File?
  inputBinding:
    prefix: -regex
- id: in_type
  doc: 'File type is X (one of: f,d,l,b,c,...)'
  type: File?
  inputBinding:
    prefix: -type
- id: in_perm
  doc: "At least one mask bit (+MASK), all bits (-MASK),\nor exactly MASK bits are\
    \ set in file's mode"
  type: File?
  inputBinding:
    prefix: -perm
- id: in_mtime
  doc: "mtime is greater than (+N), less than (-N),\nor exactly N days in the past"
  type: string?
  inputBinding:
    prefix: -mtime
- id: in_mm_in
  doc: "mtime is greater than (+N), less than (-N),\nor exactly N minutes in the past"
  type: string?
  inputBinding:
    prefix: -mmin
- id: in_newer
  doc: mtime is more recent than FILE's
  type: File?
  inputBinding:
    prefix: -newer
- id: in_user
  doc: /ID   File is owned by given user
  type: File?
  inputBinding:
    prefix: -user
- id: in_group
  doc: /ID  File is owned by given group
  type: File?
  inputBinding:
    prefix: -group
- id: in_size
  doc: "[bck]    File size is N (c:bytes,k:kbytes,b:512 bytes(def.))\n+/-N: file size\
    \ is bigger/smaller than N"
  type: long?
  inputBinding:
    prefix: -size
- id: in_prune
  doc: If current file is directory, don't descend into it
  type: boolean?
  inputBinding:
    prefix: -prune
- id: in_print
  doc: Print file name
  type: boolean?
  inputBinding:
    prefix: -print
- id: in_print_zero
  doc: Print file name, NUL terminated
  type: boolean?
  inputBinding:
    prefix: -print0
- id: in_exec
  doc: "ARG ; Run CMD with all instances of {} replaced by\nfile name. Fails if CMD\
    \ exits with nonzero"
  type: File?
  inputBinding:
    prefix: -exec
- id: in_hl
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -HL
- id: in_find
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_26
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pm-merge
