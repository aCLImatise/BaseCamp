class: CommandLineTool
id: bdf2gdfont.pl.cwl
inputs:
- id: in_hlucidatypewriterboldrnormalsansmiso_
  doc: '&H-LucidaTypewriter-Bold-R-Normal-Sans-18-180-75-75-M-110-ISO8859-'
  type: boolean
  inputBinding:
    prefix: -B
- id: in_gd_dot
  doc: "SYNOPSIS\n% bdf2gdfont.pl courR12.bdf > courR12.fnt"
  type: string
  inputBinding:
    position: 0
- id: in_one_zero_dot
  doc: 3. Using the pcf2bdf utility.
  type: long
  inputBinding:
    position: 0
- id: in_limitations
  doc: "This font converter only works with fixed-width fonts. If used with a\nTrueType\
    \ or proportional font it will die with an error message."
  type: string
  inputBinding:
    position: 0
- id: in_gd
  doc: AUTHOR
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bdf2gdfont.pl
