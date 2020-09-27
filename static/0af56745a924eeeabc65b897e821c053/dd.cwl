class: CommandLineTool
id: dd.cwl
inputs:
- id: in_ascii
  doc: from EBCDIC to ASCII
  type: string
  inputBinding:
    position: 0
- id: in_ebcdic
  doc: from ASCII to EBCDIC
  type: string
  inputBinding:
    position: 1
- id: in_ibm
  doc: from ASCII to alternate EBCDIC
  type: string
  inputBinding:
    position: 2
- id: in_block
  doc: pad newline-terminated records with spaces to cbs-size
  type: string
  inputBinding:
    position: 3
- id: in_unblock
  doc: replace trailing spaces in cbs-size records with newline
  type: string
  inputBinding:
    position: 4
- id: in_l_case
  doc: change upper case to lower case
  type: string
  inputBinding:
    position: 5
- id: in_u_case
  doc: change lower case to upper case
  type: string
  inputBinding:
    position: 6
- id: in_sparse
  doc: try to seek rather than write the output for NUL input blocks
  type: string
  inputBinding:
    position: 7
- id: in_swab
  doc: swap every pair of input bytes
  type: string
  inputBinding:
    position: 8
- id: in_pad_input_block
  doc: "pad every input block with NULs to ibs-size; when used\nwith block or unblock,\
    \ pad with spaces rather than NULs"
  type: string
  inputBinding:
    position: 9
- id: in_excl
  doc: fail if the output file already exists
  type: string
  inputBinding:
    position: 10
- id: in_no_creat
  doc: do not create the output file
  type: string
  inputBinding:
    position: 11
- id: in_not_run_c
  doc: do not truncate the output file
  type: string
  inputBinding:
    position: 12
- id: in_no_error
  doc: continue after read errors
  type: string
  inputBinding:
    position: 13
- id: in_f_data_sync
  doc: physically write output file data before finishing
  type: string
  inputBinding:
    position: 14
- id: in_fsync
  doc: likewise, but also write metadata
  type: string
  inputBinding:
    position: 15
- id: in_append
  doc: append mode (makes sense only for output; conv=notrunc suggested)
  type: string
  inputBinding:
    position: 0
- id: in_direct
  doc: use direct I/O for data
  type: string
  inputBinding:
    position: 1
- id: in_directory
  doc: fail unless a directory
  type: Directory
  inputBinding:
    position: 2
- id: in_d_sync
  doc: use synchronized I/O for data
  type: string
  inputBinding:
    position: 3
- id: in_likewise_also_metadata
  doc: likewise, but also for metadata
  type: string
  inputBinding:
    position: 4
- id: in_full_block
  doc: accumulate full blocks of input (iflag only)
  type: string
  inputBinding:
    position: 5
- id: in_non_block
  doc: use non-blocking I/O
  type: string
  inputBinding:
    position: 6
- id: in_noatime
  doc: do not update access time
  type: string
  inputBinding:
    position: 7
- id: in_nocache
  doc: Request to drop cache.  See also oflag=sync
  type: string
  inputBinding:
    position: 8
- id: in_noc_tty
  doc: do not assign controlling terminal from file
  type: string
  inputBinding:
    position: 9
- id: in_nofollow
  doc: do not follow symlinks
  type: string
  inputBinding:
    position: 10
- id: in_count_bytes
  doc: treat 'count=N' as a byte count (iflag only)
  type: string
  inputBinding:
    position: 11
- id: in_skip_bytes
  doc: treat 'skip=N' as a byte count (iflag only)
  type: string
  inputBinding:
    position: 12
- id: in_seek_bytes
  doc: treat 'seek=N' as a byte count (oflag only)
  type: string
  inputBinding:
    position: 13
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dd
