class: CommandLineTool
id: kget.2.cwl
inputs:
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File
  inputBinding:
    prefix: --option-file
- id: in_block_size
  doc: how many bytes per block
  type: boolean
  inputBinding:
    prefix: --block-size
- id: in_show_size
  doc: query size of remote file first
  type: boolean
  inputBinding:
    prefix: --show-size
- id: in_cache
  doc: wrap the remote-file into KCacheTeeFile
  type: boolean
  inputBinding:
    prefix: --cache
- id: in_cache_block
  doc: blocksize inside KCacheTeeFile
  type: boolean
  inputBinding:
    prefix: --cache-block
- id: in_proxy
  doc: use proxy to download remote file
  type: boolean
  inputBinding:
    prefix: --proxy
- id: in_random
  doc: request blocks in random order
  type: boolean
  inputBinding:
    prefix: --random
- id: in_repeat
  doc: request blocks with repeats if in random
  type: boolean
  inputBinding:
    prefix: --repeat
- id: in_buffer
  doc: wrap remote file into KBufFile with this
  type: boolean
  inputBinding:
    prefix: --buffer
- id: in_cache_complete
  doc: check completeness on open cacheteefile
  type: boolean
  inputBinding:
    prefix: --cache-complete
- id: in_truncate
  doc: "truncate the file 1st parameter\nremove trailing cache-bitmap"
  type: boolean
  inputBinding:
    prefix: --truncate
- id: in_start
  doc: offset where to read from
  type: boolean
  inputBinding:
    prefix: --start
- id: in_count
  doc: number of bytes to read
  type: boolean
  inputBinding:
    prefix: --count
- id: in_progress
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --progress
- id: in_reliable
  doc: use reliable version of http-file
  type: boolean
  inputBinding:
    prefix: --reliable
- id: in_full
  doc: "download via one http-request, not partial\nrequests in loop\n"
  type: boolean
  inputBinding:
    prefix: --full
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: '-b|--verb                        execute verbose '
  type: File
  inputBinding:
    position: 0
- id: in_order
  doc: '-p|--report                      report cache usage '
  type: string
  inputBinding:
    position: 1
- id: in_buffer_size
  doc: '-i|--sleep                       sleep inbetween requests by this amount of '
  type: long
  inputBinding:
    position: 2
- id: in_ms
  doc: '-m|--timeout                     use timed read with tis amount of ms as '
  type: string
  inputBinding:
    position: 3
- id: in_timeout
  doc: '--complete                       check if 1st parameter is complete '
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kget.2
