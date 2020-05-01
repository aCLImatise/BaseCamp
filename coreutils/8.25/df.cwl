#!/usr/bin/env cwl-runner

baseCommand:
- df
class: CommandLineTool
cwlVersion: v1.0
id: df
inputs:
- doc: include pseudo, duplicate, inaccessible file systems
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units
    of 1,048,576 bytes; see SIZE format below
  id: block_size
  inputBinding:
    prefix: --block-size
  type: long
- doc: print sizes in powers of 1000 (e.g., 1.1G)
  id: si
  inputBinding:
    prefix: --si
  type: boolean
- doc: inode information instead of block usage
  id: inodes
  inputBinding:
    prefix: --inodes
  type: string
- doc: =1K
  id: block_size
  inputBinding:
    prefix: --block-size
  type: string
- doc: listing to local file systems
  id: local
  inputBinding:
    prefix: --local
  type: string
- doc: not invoke sync before getting usage info (default)
  id: no_sync
  inputBinding:
    prefix: --no-sync
  type: string
- doc: '[=FIELD_LIST]  use the output format defined by FIELD_LIST, or print all fields
    if FIELD_LIST is omitted.'
  id: output
  inputBinding:
    prefix: --output
  type: boolean
- doc: use the POSIX output format
  id: portability
  inputBinding:
    prefix: --portability
  type: boolean
- doc: invoke sync before getting usage info
  id: sync
  inputBinding:
    prefix: --sync
  type: boolean
- doc: elide all entries insignificant to available space, and produce a grand total
  id: total
  inputBinding:
    prefix: --total
  type: boolean
- doc: limit listing to file systems of type TYPE
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: print file system type
  id: print_type
  inputBinding:
    prefix: --print-type
  type: boolean
- doc: limit listing to file systems not of type TYPE
  id: exclude_type
  inputBinding:
    prefix: --exclude-type
  type: string
- doc: (ignored)
  id: v
  inputBinding:
    prefix: -v
  type: boolean
