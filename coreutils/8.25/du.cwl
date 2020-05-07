class: CommandLineTool
id: du.cwl
inputs:
- id: all
  doc: write counts for all files, not just directories
  type: boolean
  inputBinding:
    prefix: --all
- id: apparent_size
  doc: print apparent sizes, rather than disk usage; although the apparent size is
    usually smaller, it may be larger due to holes in ('sparse') files, internal fragmentation,
    indirect blocks, and the like
  type: boolean
  inputBinding:
    prefix: --apparent-size
- id: block_size
  doc: scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units
    of 1,048,576 bytes; see SIZE format below
  type: long
  inputBinding:
    prefix: --block-size
- id: bytes
  doc: equivalent to '--apparent-size --block-size=1'
  type: boolean
  inputBinding:
    prefix: --bytes
- id: total
  doc: produce a grand total
  type: boolean
  inputBinding:
    prefix: --total
- id: dereference_args
  doc: dereference only symlinks that are listed on the command line
  type: boolean
  inputBinding:
    prefix: --dereference-args
- id: max_depth
  doc: print the total for a directory (or file, with --all) only if it is N or fewer
    levels below the command line argument;  --max-depth=0 is the same as --summarize
  type: string
  inputBinding:
    prefix: --max-depth
- id: files_0_from
  doc: summarize disk usage of the NUL-terminated file names specified in file F;
    if F is -, then read names from standard input
  type: string
  inputBinding:
    prefix: --files0-from
- id: h
  doc: equivalent to --dereference-args (-D)
  type: boolean
  inputBinding:
    prefix: -H
- id: inodes
  doc: list inode usage information instead of block usage
  type: boolean
  inputBinding:
    prefix: --inodes
- id: k
  doc: like --block-size=1K
  type: boolean
  inputBinding:
    prefix: -k
- id: dereference
  doc: dereference all symbolic links
  type: boolean
  inputBinding:
    prefix: --dereference
- id: count_links
  doc: count sizes many times if hard linked
  type: boolean
  inputBinding:
    prefix: --count-links
- id: m
  doc: like --block-size=1M
  type: boolean
  inputBinding:
    prefix: -m
- id: no_dereference
  doc: don't follow any symbolic links (this is the default)
  type: boolean
  inputBinding:
    prefix: --no-dereference
- id: separate_dirs
  doc: for directories do not include size of subdirectories
  type: boolean
  inputBinding:
    prefix: --separate-dirs
- id: si
  doc: like -h, but use powers of 1000 not 1024
  type: boolean
  inputBinding:
    prefix: --si
- id: summarize
  doc: display only a total for each argument
  type: boolean
  inputBinding:
    prefix: --summarize
- id: threshold
  doc: exclude entries smaller than SIZE if positive, or entries greater than SIZE
    if negative
  type: long
  inputBinding:
    prefix: --threshold
- id: time
  doc: show time of the last modification of any file in the directory, or any of
    its subdirectories
  type: boolean
  inputBinding:
    prefix: --time
- id: time
  doc: 'show time as WORD instead of modification time: atime, access, use, ctime
    or status'
  type: string
  inputBinding:
    prefix: --time
- id: time_style
  doc: "show times using STYLE, which can be: full-iso, long-iso, iso, or +FORMAT;\
    \ FORMAT is interpreted like in 'date'"
  type: string
  inputBinding:
    prefix: --time-style
- id: exclude_from
  doc: exclude files that match any pattern in FILE
  type: File
  inputBinding:
    prefix: --exclude-from
- id: exclude
  doc: exclude files that match PATTERN
  type: string
  inputBinding:
    prefix: --exclude
- id: one_file_system
  doc: skip directories on different file systems
  type: boolean
  inputBinding:
    prefix: --one-file-system
outputs: []
cwlVersion: v1.1
baseCommand:
- du
