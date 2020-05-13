class: CommandLineTool
id: kget.2.10.3.cwl
inputs:
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
- id: verb
  doc: 'execute verbose '
  type: boolean
  inputBinding:
    prefix: --verb
- id: block_size
  doc: 'how many bytes per block '
  type: boolean
  inputBinding:
    prefix: --block-size
- id: show_size
  doc: 'query size of remote file first '
  type: boolean
  inputBinding:
    prefix: --show-size
- id: cache
  doc: 'wrap the remote-file into KCacheTeeFile '
  type: boolean
  inputBinding:
    prefix: --cache
- id: cache_block
  doc: 'blocksize inside KCacheTeeFile '
  type: boolean
  inputBinding:
    prefix: --cache-block
- id: proxy
  doc: 'use proxy to download remote file '
  type: boolean
  inputBinding:
    prefix: --proxy
- id: random
  doc: 'request blocks in random order '
  type: boolean
  inputBinding:
    prefix: --random
- id: repeat
  doc: 'request blocks with repeats if in random  order '
  type: boolean
  inputBinding:
    prefix: --repeat
- id: report
  doc: 'report cache usage '
  type: boolean
  inputBinding:
    prefix: --report
- id: buffer
  doc: 'wrap remote file into KBufFile with this  buffer-size '
  type: boolean
  inputBinding:
    prefix: --buffer
- id: sleep
  doc: 'sleep inbetween requests by this amount of  ms '
  type: boolean
  inputBinding:
    prefix: --sleep
- id: timeout
  doc: 'use timed read with tis amount of ms as  timeout '
  type: boolean
  inputBinding:
    prefix: --timeout
- id: complete
  doc: 'check if 1st parameter is complete '
  type: boolean
  inputBinding:
    prefix: --complete
- id: cache_complete
  doc: 'check completeness on open cacheteefile '
  type: boolean
  inputBinding:
    prefix: --cache-complete
- id: truncate
  doc: 'truncate the file 1st parameter  remove trailing cache-bitmap '
  type: boolean
  inputBinding:
    prefix: --truncate
- id: start
  doc: 'offset where to read from '
  type: boolean
  inputBinding:
    prefix: --start
- id: count
  doc: 'number of bytes to read '
  type: boolean
  inputBinding:
    prefix: --count
- id: progress
  doc: 'show progress '
  type: boolean
  inputBinding:
    prefix: --progress
- id: reliable
  doc: 'use reliable version of http-file '
  type: boolean
  inputBinding:
    prefix: --reliable
- id: full
  doc: 'download via one http-request, not partial  requests in loop '
  type: boolean
  inputBinding:
    prefix: --full
outputs: []
cwlVersion: v1.1
baseCommand:
- kget.2.10.3
