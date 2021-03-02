class: CommandLineTool
id: draw_basepair_track.pl.cwl
inputs:
- id: in_gff
  doc: \
  type: File?
  inputBinding:
    prefix: --gff
- id: in_out
  doc: Data directory to write to. Defaults to "data/".
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_track_label
  doc: Unique name for the track. Defaults to the wiggle filename.
  type: File?
  inputBinding:
    prefix: --trackLabel
- id: in_key
  doc: "Human-readable name for the track. Defaults to be the same as the\n\"--trackLabel\"\
    ."
  type: string?
  inputBinding:
    prefix: --key
- id: in_bgcolor
  doc: "<R,G,B>\nBackground color for the image track. Defaults to \"255,255,255\"\
    ,\nwhich is white."
  type: boolean?
  inputBinding:
    prefix: --bgcolor
- id: in_fg_color
  doc: "<R,G,B>\nForeground color for the track, i.e. the color of the lines that\
    \ are\ndrawn. Defaults to \"0,255,0\", which is bright green."
  type: boolean?
  inputBinding:
    prefix: --fgcolor
- id: in_thickness
  doc: Thickness in pixels of the drawn lines. Defaults to 2.
  type: long?
  inputBinding:
    prefix: --thickness
- id: in_width
  doc: Width in pixels of each image tile. Defaults to 2000.
  type: long?
  inputBinding:
    prefix: --width
- id: in_height
  doc: Height in pixels of the image track. Defaults to 100.
  type: long?
  inputBinding:
    prefix: --height
- id: in_no_links
  doc: "If passed, do not use filesystem hardlinks to compress duplicate\ntiles.\n"
  type: boolean?
  inputBinding:
    prefix: --nolinks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0
cwlVersion: v1.1
baseCommand:
- draw-basepair-track.pl
