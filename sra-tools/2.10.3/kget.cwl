#!/usr/bin/env cwl-runner

baseCommand:
- kget.2
class: CommandLineTool
cwlVersion: v1.0
id: kget.2
inputs:
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
- doc: 'execute verbose '
  id: verb
  inputBinding:
    prefix: --verb
  type: boolean
- doc: 'how many bytes per block '
  id: block_size
  inputBinding:
    prefix: --block-size
  type: boolean
- doc: 'query size of remote file first '
  id: show_size
  inputBinding:
    prefix: --show-size
  type: boolean
- doc: 'wrap the remote-file into KCacheTeeFile '
  id: cache
  inputBinding:
    prefix: --cache
  type: boolean
- doc: 'blocksize inside KCacheTeeFile '
  id: cache_block
  inputBinding:
    prefix: --cache-block
  type: boolean
- doc: 'use proxy to download remote file '
  id: proxy
  inputBinding:
    prefix: --proxy
  type: boolean
- doc: 'request blocks in random order '
  id: random
  inputBinding:
    prefix: --random
  type: boolean
- doc: 'request blocks with repeats if in random  order '
  id: repeat
  inputBinding:
    prefix: --repeat
  type: boolean
- doc: 'report cache usage '
  id: report
  inputBinding:
    prefix: --report
  type: boolean
- doc: 'wrap remote file into KBufFile with this  buffer-size '
  id: buffer
  inputBinding:
    prefix: --buffer
  type: boolean
- doc: 'sleep inbetween requests by this amount of  ms '
  id: sleep
  inputBinding:
    prefix: --sleep
  type: boolean
- doc: 'use timed read with tis amount of ms as  timeout '
  id: timeout
  inputBinding:
    prefix: --timeout
  type: boolean
- doc: 'check if 1st parameter is complete '
  id: complete
  inputBinding:
    prefix: --complete
  type: boolean
- doc: 'check completeness on open cacheteefile '
  id: cache_complete
  inputBinding:
    prefix: --cache-complete
  type: boolean
- doc: 'truncate the file 1st parameter  remove trailing cache-bitmap '
  id: truncate
  inputBinding:
    prefix: --truncate
  type: boolean
- doc: 'offset where to read from '
  id: start
  inputBinding:
    prefix: --start
  type: boolean
- doc: 'number of bytes to read '
  id: count
  inputBinding:
    prefix: --count
  type: boolean
- doc: 'show progress '
  id: progress
  inputBinding:
    prefix: --progress
  type: boolean
- doc: 'use reliable version of http-file '
  id: reliable
  inputBinding:
    prefix: --reliable
  type: boolean
- doc: 'download via one http-request, not partial  requests in loop '
  id: full
  inputBinding:
    prefix: --full
  type: boolean
