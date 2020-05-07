class: CommandLineTool
id: halTreeNIBackground.py.cwl
inputs:
- id: hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: workdir
  doc: working dir for all bed files
  type: string
  inputBinding:
    position: 1
- id: background_bed_name
  doc: 'Name function for background bed files where genome name is specified as %s.
    Computed using halTreeNIBackground (default: %%s_bg.bed)'
  type: string
  inputBinding:
    prefix: --backgroundBedName
- id: ar
  doc: 'Select only repeatmasked regions (default: False)'
  type: boolean
  inputBinding:
    prefix: --ar
- id: ar_extend
  doc: 'Extend selected repeats by given number of bases (default: 0)'
  type: string
  inputBinding:
    prefix: --arExtend
- id: ar_extend_pct
  doc: 'Extend selected repeated regions by given percent (default: 0.0)'
  type: string
  inputBinding:
    prefix: --arExtendPct
- id: root
  doc: 'root (default: None)'
  type: string
  inputBinding:
    prefix: --root
outputs: []
cwlVersion: v1.1
baseCommand:
- halTreeNIBackground.py
