class: CommandLineTool
id: du.cwl
inputs:
- id: in_null
  doc: end each output line with NUL, not newline
  type: boolean?
  inputBinding:
    prefix: --null
- id: in_all
  doc: write counts for all files, not just directories
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_apparent_size
  doc: "print apparent sizes, rather than disk usage; although\nthe apparent size\
    \ is usually smaller, it may be\nlarger due to holes in ('sparse') files, internal\n\
    fragmentation, indirect blocks, and the like"
  type: boolean?
  inputBinding:
    prefix: --apparent-size
- id: in_block_size
  doc: "scale sizes by SIZE before printing them; e.g.,\n'-BM' prints sizes in units\
    \ of 1,048,576 bytes;\nsee SIZE format below"
  type: long?
  inputBinding:
    prefix: --block-size
- id: in_bytes
  doc: equivalent to '--apparent-size --block-size=1'
  type: boolean?
  inputBinding:
    prefix: --bytes
- id: in_total
  doc: produce a grand total
  type: boolean?
  inputBinding:
    prefix: --total
- id: in_dereference_args
  doc: "dereference only symlinks that are listed on the\ncommand line"
  type: boolean?
  inputBinding:
    prefix: --dereference-args
- id: in_max_depth
  doc: "print the total for a directory (or file, with --all)\nonly if it is N or\
    \ fewer levels below the command\nline argument;  --max-depth=0 is the same as\n\
    --summarize"
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_files_zero_from
  doc: "summarize disk usage of the\nNUL-terminated file names specified in file F;\n\
    if F is -, then read names from standard input"
  type: long?
  inputBinding:
    prefix: --files0-from
- id: in_equivalent_dereferenceargs_d
  doc: equivalent to --dereference-args (-D)
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_inodes
  doc: list inode usage information instead of block usage
  type: boolean?
  inputBinding:
    prefix: --inodes
- id: in_like__blocksizek
  doc: like --block-size=1K
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_dereference
  doc: dereference all symbolic links
  type: boolean?
  inputBinding:
    prefix: --dereference
- id: in_count_links
  doc: count sizes many times if hard linked
  type: boolean?
  inputBinding:
    prefix: --count-links
- id: in_like__blocksizem
  doc: like --block-size=1M
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_no_dereference
  doc: don't follow any symbolic links (this is the default)
  type: boolean?
  inputBinding:
    prefix: --no-dereference
- id: in_separate_dirs
  doc: for directories do not include size of subdirectories
  type: boolean?
  inputBinding:
    prefix: --separate-dirs
- id: in_si
  doc: like -h, but use powers of 1000 not 1024
  type: boolean?
  inputBinding:
    prefix: --si
- id: in_summarize
  doc: display only a total for each argument
  type: boolean?
  inputBinding:
    prefix: --summarize
- id: in_threshold
  doc: "exclude entries smaller than SIZE if positive,\nor entries greater than SIZE\
    \ if negative"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_time_style
  doc: "show times using STYLE, which can be:\nfull-iso, long-iso, iso, or +FORMAT;\n\
    FORMAT is interpreted like in 'date'"
  type: string?
  inputBinding:
    prefix: --time-style
- id: in_exclude_from
  doc: exclude files that match any pattern in FILE
  type: File?
  inputBinding:
    prefix: --exclude-from
- id: in_exclude
  doc: exclude files that match PATTERN
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_one_file_system
  doc: skip directories on different file systems
  type: boolean?
  inputBinding:
    prefix: --one-file-system
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- du
