#!/usr/bin/env cwl-runner

baseCommand:
- du
class: CommandLineTool
cwlVersion: v1.0
id: du
inputs:
- doc: write counts for all files, not just directories
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: print apparent sizes, rather than disk usage; although the apparent size is
    usually smaller, it may be larger due to holes in ('sparse') files, internal fragmentation,
    indirect blocks, and the like
  id: apparent_size
  inputBinding:
    prefix: --apparent-size
  type: boolean
- doc: scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units
    of 1,048,576 bytes; see SIZE format below
  id: block_size
  inputBinding:
    prefix: --block-size
  type: long
- doc: equivalent to '--apparent-size --block-size=1'
  id: bytes
  inputBinding:
    prefix: --bytes
  type: boolean
- doc: produce a grand total
  id: total
  inputBinding:
    prefix: --total
  type: boolean
- doc: dereference only symlinks that are listed on the command line
  id: dereference_args
  inputBinding:
    prefix: --dereference-args
  type: boolean
- doc: print the total for a directory (or file, with --all) only if it is N or fewer
    levels below the command line argument;  --max-depth=0 is the same as --summarize
  id: max_depth
  inputBinding:
    prefix: --max-depth
  type: string
- doc: summarize disk usage of the NUL-terminated file names specified in file F;
    if F is -, then read names from standard input
  id: files_0_from
  inputBinding:
    prefix: --files0-from
  type: string
- doc: equivalent to --dereference-args (-D)
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: list inode usage information instead of block usage
  id: inodes
  inputBinding:
    prefix: --inodes
  type: boolean
- doc: like --block-size=1K
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: dereference all symbolic links
  id: dereference
  inputBinding:
    prefix: --dereference
  type: boolean
- doc: count sizes many times if hard linked
  id: count_links
  inputBinding:
    prefix: --count-links
  type: boolean
- doc: like --block-size=1M
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: don't follow any symbolic links (this is the default)
  id: no_dereference
  inputBinding:
    prefix: --no-dereference
  type: boolean
- doc: for directories do not include size of subdirectories
  id: separate_dirs
  inputBinding:
    prefix: --separate-dirs
  type: boolean
- doc: like -h, but use powers of 1000 not 1024
  id: si
  inputBinding:
    prefix: --si
  type: boolean
- doc: display only a total for each argument
  id: summarize
  inputBinding:
    prefix: --summarize
  type: boolean
- doc: exclude entries smaller than SIZE if positive, or entries greater than SIZE
    if negative
  id: threshold
  inputBinding:
    prefix: --threshold
  type: long
- doc: show time of the last modification of any file in the directory, or any of
    its subdirectories
  id: time
  inputBinding:
    prefix: --time
  type: boolean
- doc: 'show time as WORD instead of modification time: atime, access, use, ctime
    or status'
  id: time
  inputBinding:
    prefix: --time
  type: string
- doc: "show times using STYLE, which can be: full-iso, long-iso, iso, or +FORMAT;\
    \ FORMAT is interpreted like in 'date'"
  id: time_style
  inputBinding:
    prefix: --time-style
  type: string
- doc: exclude files that match any pattern in FILE
  id: exclude_from
  inputBinding:
    prefix: --exclude-from
  type: File
- doc: exclude files that match PATTERN
  id: exclude
  inputBinding:
    prefix: --exclude
  type: string
- doc: skip directories on different file systems
  id: one_file_system
  inputBinding:
    prefix: --one-file-system
  type: boolean
