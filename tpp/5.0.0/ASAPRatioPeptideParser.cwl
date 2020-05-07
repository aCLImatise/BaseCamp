class: CommandLineTool
id: ASAPRatioPeptideParser.cwl
inputs:
- id: xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: l
  doc: <str>    change labeled residues (default='C')
  type: boolean
  inputBinding:
    prefix: -l
- id: b
  doc: heavy labeled peptide elutes before light labeled partner
  type: boolean
  inputBinding:
    prefix: -b
- id: f
  doc: <num>    areaFlag set to num (ratio display option)
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: <num>    range around precusor m/z to search for peak (default 0.5)
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: static modification quantification (i.e. each run is either all light or all
    heavy)
  type: boolean
  inputBinding:
    prefix: -S
- id: f
  doc: use fixed scan range for light and heavy
  type: boolean
  inputBinding:
    prefix: -F
- id: c
  doc: quantitate only the charge state where the CID was made
  type: boolean
  inputBinding:
    prefix: -C
- id: b
  doc: return a ratio even if the background is high
  type: boolean
  inputBinding:
    prefix: -B
- id: z
  doc: set all background to zero
  type: boolean
  inputBinding:
    prefix: -Z
- id: p
  doc: <num>    minimum PeptideProphet probability to process (default 0)
  type: boolean
  inputBinding:
    prefix: -p
- id: i
  doc: <num>    minimum iProphet probability to process (default 0)
  type: boolean
  inputBinding:
    prefix: -i
- id: m
  doc: '<str>    specified label masses (e.g. M74.325Y125.864), only relevant for
    static modification quantification '
  type: boolean
  inputBinding:
    prefix: -m
- id: w
  doc: 'EXPERIMENTAL: use wavelet smoothing from WaveletQuant implmentation'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- ASAPRatioPeptideParser
