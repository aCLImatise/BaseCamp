class: CommandLineTool
id: webSync.cwl
inputs:
- id: web_sync_log
  doc: /biggerHere.txt - list of files that are bigger here. These could be errors
    or OK.
  type: boolean
  inputBinding:
    prefix: '- webSyncLog'
- id: web_sync_log
  doc: /files.here.txt - the list of files here
  type: boolean
  inputBinding:
    prefix: '- webSyncLog'
- id: web_sync_log
  doc: /files.there.txt - the list of files there, current copy of https://there.org/files.txt
  type: boolean
  inputBinding:
    prefix: '- webSyncLog'
- id: web_sync_log
  doc: /missingThere.txt - the list of files not on https://there.org anymore but
    here
  type: boolean
  inputBinding:
    prefix: '- webSyncLog'
- id: web_sync_log
  doc: /transfer.log - big transfer log, each run, date and size of transferred file
    is noted here.
  type: boolean
  inputBinding:
    prefix: '- webSyncLog'
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: connections
  doc: Maximum number of parallel connections to the server, default 10
  type: string
  inputBinding:
    prefix: --connections
- id: skip_scan
  doc: Do not scan local file sizes again, in case you know it is up to date
  type: boolean
  inputBinding:
    prefix: --skipScan
outputs: []
cwlVersion: v1.1
baseCommand:
- webSync
