#!/usr/bin/env cwl-runner

baseCommand:
- dd
class: CommandLineTool
cwlVersion: v1.0
id: dd
inputs:
- doc: from EBCDIC to ASCII
  id: ascii
  inputBinding:
    position: 0
  type: string
- doc: from ASCII to EBCDIC
  id: ebcdic
  inputBinding:
    position: 1
  type: string
- doc: from ASCII to alternate EBCDIC
  id: ibm
  inputBinding:
    position: 2
  type: string
- doc: pad newline-terminated records with spaces to cbs-size
  id: block
  inputBinding:
    position: 3
  type: string
- doc: replace trailing spaces in cbs-size records with newline
  id: unblock
  inputBinding:
    position: 4
  type: string
- doc: change upper case to lower case
  id: l_case
  inputBinding:
    position: 5
  type: string
- doc: change lower case to upper case
  id: u_case
  inputBinding:
    position: 6
  type: string
- doc: try to seek rather than write the output for NUL input blocks
  id: sparse
  inputBinding:
    position: 7
  type: string
- doc: swap every pair of input bytes
  id: swab
  inputBinding:
    position: 8
  type: string
- doc: pad every input block with NULs to ibs-size; when used with block or unblock,
    pad with spaces rather than NULs
  id: sync
  inputBinding:
    position: 9
  type: string
- doc: fail if the output file already exists
  id: excl
  inputBinding:
    position: 10
  type: string
- doc: do not create the output file
  id: no_creat
  inputBinding:
    position: 11
  type: string
- doc: do not truncate the output file
  id: not_run_c
  inputBinding:
    position: 12
  type: string
- doc: continue after read errors
  id: no_error
  inputBinding:
    position: 13
  type: string
- doc: physically write output file data before finishing
  id: f_data_sync
  inputBinding:
    position: 14
  type: string
- doc: likewise, but also write metadata
  id: fsync
  inputBinding:
    position: 15
  type: string
- doc: treat 'count=N' as a byte count (iflag only)
  id: count_bytes
  inputBinding:
    position: 0
  type: string
- doc: treat 'skip=N' as a byte count (iflag only)
  id: skip_bytes
  inputBinding:
    position: 1
  type: string
- doc: treat 'seek=N' as a byte count (oflag only)
  id: seek_bytes
  inputBinding:
    position: 2
  type: string
