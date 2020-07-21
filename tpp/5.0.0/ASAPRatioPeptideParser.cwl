class: CommandLineTool
id: ../../../ASAPRatioPeptideParser.cwl
inputs:
- id: str_change_labeled
  doc: <str>    change labeled residues (default='C')
  type: boolean
  inputBinding:
    prefix: -l
- id: heavy_labeled_peptide
  doc: heavy labeled peptide elutes before light labeled partner
  type: boolean
  inputBinding:
    prefix: -b
- id: num_areaflag_set
  doc: <num>    areaFlag set to num (ratio display option)
  type: boolean
  inputBinding:
    prefix: -f
- id: num_range_mz
  doc: <num>    range around precusor m/z to search for peak (default 0.5)
  type: boolean
  inputBinding:
    prefix: -r
- id: static_modification_quantification
  doc: static modification quantification (i.e. each run is either all light or all
    heavy)
  type: boolean
  inputBinding:
    prefix: -S
- id: use_fixed_range
  doc: use fixed scan range for light and heavy
  type: boolean
  inputBinding:
    prefix: -F
- id: quantitate_only_state
  doc: quantitate only the charge state where the CID was made
  type: boolean
  inputBinding:
    prefix: -C
- id: return_ratio_even
  doc: return a ratio even if the background is high
  type: boolean
  inputBinding:
    prefix: -B
- id: set_background_zero
  doc: set all background to zero
  type: boolean
  inputBinding:
    prefix: -Z
- id: num_minimum_peptideprophet
  doc: <num>    minimum PeptideProphet probability to process (default 0)
  type: boolean
  inputBinding:
    prefix: -p
- id: num_minimum_iprophet
  doc: <num>    minimum iProphet probability to process (default 0)
  type: boolean
  inputBinding:
    prefix: -i
- id: str_specified_masses
  doc: '<str>    specified label masses (e.g. M74.325Y125.864), only relevant for
    static modification quantification '
  type: boolean
  inputBinding:
    prefix: -m
- id: experimental_use_smoothing
  doc: 'EXPERIMENTAL: use wavelet smoothing from WaveletQuant implmentation'
  type: boolean
  inputBinding:
    prefix: -w
- id: xml_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ASAPRatioPeptideParser
