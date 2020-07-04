class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hgLoadBed.cwl
inputs:
- id: tmpdir
  doc: '- path to directory for creation of temporary .tab file - which will be removed
    after loading'
  type: File
  inputBinding:
    prefix: -tmpDir
- id: no_name_ix
  doc: '- no index for the name column (default creates index)'
  type: boolean
  inputBinding:
    prefix: -noNameIx
- id: ignore_empty
  doc: '- no error on empty input file'
  type: boolean
  inputBinding:
    prefix: -ignoreEmpty
- id: no_strict
  doc: "- don't perform coord sanity checks - by default we abort when: chromStart\
    \ >= chromEnd"
  type: boolean
  inputBinding:
    prefix: -noStrict
- id: allow_start_equal_end
  doc: '- even when doing strict checks, allow chromStart==chromEnd (zero-length e.g.
    insertion)'
  type: boolean
  inputBinding:
    prefix: -allowStartEqualEnd
- id: allow_negative_scores
  doc: '- sql definition of score column is int, not unsigned'
  type: boolean
  inputBinding:
    prefix: -allowNegativeScores
- id: custom_track_loader
  doc: '- turns on: -noNameIx, -noHistory, -ignoreEmpty, -allowStartEqualEnd, -allowNegativeScores,
    -verbose=0 Plus, this turns on a 20 minute time-out exit.'
  type: boolean
  inputBinding:
    prefix: -customTrackLoader
- id: fill_in_score
  doc: "- if every score value is zero, then use column 'colName' to fill in the score\
    \ column (from minScore-1000)"
  type: string
  inputBinding:
    prefix: -fillInScore
- id: min_score
  doc: '- minimum value for score field for -fillInScore option (default 100)'
  type: string
  inputBinding:
    prefix: -minScore
- id: verbose
  doc: '- verbose level for extra information to STDERR'
  type: string
  inputBinding:
    prefix: -verbose
- id: dot_is_null
  doc: "- if the specified field is a '.' the replace it with -1"
  type: string
  inputBinding:
    prefix: -dotIsNull
- id: line_limit
  doc: '- limit input file to this number of lines'
  type: string
  inputBinding:
    prefix: -lineLimit
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadBed
