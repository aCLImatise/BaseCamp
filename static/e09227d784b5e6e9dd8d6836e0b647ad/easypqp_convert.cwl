class: CommandLineTool
id: easypqp_convert.cwl
inputs:
- id: pep_xml
  doc: The input MSFragger TSV file.  [required]
  type: File
  inputBinding:
    prefix: --pepxml
- id: spectra
  doc: The input mzXML or MGF (timsTOF only) file. [required]
  type: File
  inputBinding:
    prefix: --spectra
- id: uni_mod
  doc: The input UniMod XML file.
  type: File
  inputBinding:
    prefix: --unimod
- id: psms
  doc: Output PSMs file.
  type: File
  inputBinding:
    prefix: --psms
- id: peaks
  doc: Output peaks file.
  type: File
  inputBinding:
    prefix: --peaks
- id: exclude_range
  doc: 'massdiff in this range will not be mapped to UniMod.  [default: -1.5,3.5]'
  type: string
  inputBinding:
    prefix: --exclude-range
- id: max_delta_uni_mod
  doc: 'Maximum delta mass (Dalton) for UniMod annotation.  [default: 0.02]'
  type: double
  inputBinding:
    prefix: --max_delta_unimod
- id: max_delta_ppm
  doc: 'Maximum delta mass (PPM) for annotation. [default: 15]'
  type: double
  inputBinding:
    prefix: --max_delta_ppm
- id: fragment_types
  doc: 'Allowed fragment ion types (a,b,c,x,y,z). [default: b, y]'
  type: string
  inputBinding:
    prefix: --fragment_types
- id: fragment_charges
  doc: 'Allowed fragment ion charges.  [default: 1, 2, 3, 4]'
  type: string
  inputBinding:
    prefix: --fragment_charges
- id: enable_specific_losses
  doc: '/ --no-enable_specific_losses Enable specific fragment ion losses. [default:
    False]'
  type: boolean
  inputBinding:
    prefix: --enable_specific_losses
- id: enable_unspecific_losses
  doc: '/ --no-enable_unspecific_losses Enable unspecific fragment ion losses. [default:
    False]'
  type: boolean
  inputBinding:
    prefix: --enable_unspecific_losses
- id: subsample_fraction
  doc: 'Data fraction used for subsampling. [default: 1.0]'
  type: double
  inputBinding:
    prefix: --subsample_fraction
outputs: []
cwlVersion: v1.1
baseCommand:
- easypqp
- convert
