class: CommandLineTool
id: hubCheck.cwl
inputs:
- id: no_tracks
  doc: "- don't check remote files for tracks, just trackDb (faster)"
  type: boolean
  inputBinding:
    prefix: -noTracks
- id: check_settings
  doc: '- check trackDb settings to spec'
  type: boolean
  inputBinding:
    prefix: -checkSettings
- id: version
  doc: =[v?|url]     - version to validate settings against (defaults to version in
    hub.txt, or current standard)
  type: boolean
  inputBinding:
    prefix: -version
- id: extra
  doc: =[file|url]     - accept settings in this file (or url)
  type: boolean
  inputBinding:
    prefix: -extra
- id: level
  doc: '|required  - reject settings below this support level'
  type: string
  inputBinding:
    prefix: -level
- id: settings
  doc: '- just list settings with support level'
  type: boolean
  inputBinding:
    prefix: -settings
- id: udc_dir
  doc: =/dir/to/cache - place to put cache for remote bigBed/bigWigs. Will create
    this directory if not existing
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: print_meta
  doc: '- print the metadata for each track'
  type: boolean
  inputBinding:
    prefix: -printMeta
- id: cache_time
  doc: '- set cache refresh time in seconds, default 1'
  type: string
  inputBinding:
    prefix: -cacheTime
- id: verbose
  doc: =2            - output verbosely
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hubCheck
