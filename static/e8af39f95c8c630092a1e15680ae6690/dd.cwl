class: CommandLineTool
id: dd.cwl
inputs:
- id: ascii
  doc: from EBCDIC to ASCII
  type: string
  inputBinding:
    position: 0
- id: ebcdic
  doc: from ASCII to EBCDIC
  type: string
  inputBinding:
    position: 1
- id: ibm
  doc: from ASCII to alternate EBCDIC
  type: string
  inputBinding:
    position: 2
- id: block
  doc: pad newline-terminated records with spaces to cbs-size
  type: string
  inputBinding:
    position: 3
- id: unblock
  doc: replace trailing spaces in cbs-size records with newline
  type: string
  inputBinding:
    position: 4
- id: l_case
  doc: change upper case to lower case
  type: string
  inputBinding:
    position: 5
- id: u_case
  doc: change lower case to upper case
  type: string
  inputBinding:
    position: 6
- id: sparse
  doc: try to seek rather than write the output for NUL input blocks
  type: string
  inputBinding:
    position: 7
- id: swab
  doc: swap every pair of input bytes
  type: string
  inputBinding:
    position: 8
- id: sync
  doc: pad every input block with NULs to ibs-size; when used with block or unblock,
    pad with spaces rather than NULs
  type: string
  inputBinding:
    position: 9
- id: excl
  doc: fail if the output file already exists
  type: string
  inputBinding:
    position: 10
- id: no_creat
  doc: do not create the output file
  type: string
  inputBinding:
    position: 11
- id: not_run_c
  doc: do not truncate the output file
  type: string
  inputBinding:
    position: 12
- id: no_error
  doc: continue after read errors
  type: string
  inputBinding:
    position: 13
- id: f_data_sync
  doc: physically write output file data before finishing
  type: string
  inputBinding:
    position: 14
- id: fsync
  doc: likewise, but also write metadata
  type: string
  inputBinding:
    position: 15
- id: count_bytes
  doc: treat 'count=N' as a byte count (iflag only)
  type: string
  inputBinding:
    position: 0
- id: skip_bytes
  doc: treat 'skip=N' as a byte count (iflag only)
  type: string
  inputBinding:
    position: 1
- id: seek_bytes
  doc: treat 'seek=N' as a byte count (oflag only)
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dd
