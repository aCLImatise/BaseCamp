class: CommandLineTool
id: cmsearchToBed.cwl
inputs:
- id: in_cm_search_path
  doc: Path to input cmsearch file
  type: File?
  inputBinding:
    prefix: --cmsearchpath
- id: in_input_browser_settings
  doc: 'Browser settings. Default: browser hide'
  type: string?
  inputBinding:
    prefix: --inputbrowsersettings
- id: in_input_track_name
  doc: 'Name of the track Default: PredictedRNA'
  type: string?
  inputBinding:
    prefix: --inputtrackname
- id: in_input_track_description
  doc: "Description of the track. Default: RNA\nloci predicted by cmsearch"
  type: string?
  inputBinding:
    prefix: --inputtrackdescription
- id: in_input_item_rgb
  doc: 'RGB Color of the track. Default: True'
  type: boolean?
  inputBinding:
    prefix: --inputitemrgb
- id: in_input_track_color
  doc: 'RGB Color of the track. Default: 255,0,0'
  type: long?
  inputBinding:
    prefix: --inputtrackcolor
- id: in_sort_bed
  doc: "Sort entries of Bed file by start end end\ncooridinates. Default: True"
  type: boolean?
  inputBinding:
    prefix: --sortbed
- id: in_with_header
  doc: 'Output contains bed header. Default: True'
  type: boolean?
  inputBinding:
    prefix: --withheader
- id: in_verbose
  doc: Loud verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_all
  doc: '-y --inputbedvisibility=INT      Visibility setting of track. Default: 2'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cmsearchToBed
