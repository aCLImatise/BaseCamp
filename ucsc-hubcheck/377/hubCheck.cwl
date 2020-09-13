class: CommandLineTool
id: ../../../hubCheck.cwl
inputs:
- id: in_no_tracks
  doc: "- don't check remote files for tracks, just trackDb (faster)"
  type: boolean
  inputBinding:
    prefix: -noTracks
- id: in_check_settings
  doc: '- check trackDb settings to spec'
  type: boolean
  inputBinding:
    prefix: -checkSettings
- id: in_version
  doc: "=[v?|url]     - version to validate settings against\n(defaults to version\
    \ in hub.txt, or current standard)"
  type: boolean
  inputBinding:
    prefix: -version
- id: in_extra
  doc: =[file|url]     - accept settings in this file (or url)
  type: boolean
  inputBinding:
    prefix: -extra
- id: in_level
  doc: '|required  - reject settings below this support level'
  type: string
  inputBinding:
    prefix: -level
- id: in_settings
  doc: '- just list settings with support level'
  type: boolean
  inputBinding:
    prefix: -settings
- id: in_udc_dir
  doc: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs.\nWill create\
    \ this directory if not existing"
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: in_print_meta
  doc: '- print the metadata for each track'
  type: boolean
  inputBinding:
    prefix: -printMeta
- id: in_cache_time
  doc: '- set cache refresh time in seconds, default 1'
  type: long
  inputBinding:
    prefix: -cacheTime
- id: in_verbose
  doc: '- output verbosely'
  type: long
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hubCheck
