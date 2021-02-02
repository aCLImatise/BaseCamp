class: CommandLineTool
id: remove_track.pl.cwl
inputs:
- id: in_dir
  doc: Path to the JBrowse data directory to operate on.
  type: File
  inputBinding:
    prefix: --dir
- id: in_track_label
  doc: "Track label(s) to delete. This option may be specified multiple\ntimes to\
    \ delete multiple tracks."
  type: string
  inputBinding:
    prefix: --trackLabel
- id: in_delete
  doc: "In addition to removing the track configuration so that JBrowse will\nnot\
    \ display the track, delete the track data as well. Be careful!"
  type: boolean
  inputBinding:
    prefix: --delete
- id: in_quiet
  doc: "Do not print any progress messages.\n"
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- remove-track.pl
