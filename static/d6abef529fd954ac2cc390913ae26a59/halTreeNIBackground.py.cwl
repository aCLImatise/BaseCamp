class: CommandLineTool
id: halTreeNIBackground.py.cwl
inputs:
- id: in_background_bed_name
  doc: "Name function for background bed files where genome\nname is specified as\
    \ %s. Computed using\nhalTreeNIBackground (default: %%s_bg.bed)"
  type: string?
  inputBinding:
    prefix: --backgroundBedName
- id: in_ar
  doc: 'Select only repeatmasked regions (default: False)'
  type: boolean?
  inputBinding:
    prefix: --ar
- id: in_ar_extend
  doc: "Extend selected repeats by given number of bases\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --arExtend
- id: in_ar_extend_pct
  doc: "Extend selected repeated regions by given percent\n(default: 0.0)"
  type: double?
  inputBinding:
    prefix: --arExtendPct
- id: in_root
  doc: 'root (default: None)'
  type: string?
  inputBinding:
    prefix: --root
- id: in_hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: in_workdir
  doc: working dir for all bed files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halTreeNIBackground.py
