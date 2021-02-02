class: CommandLineTool
id: ../../../easypqp_convert.cwl
inputs:
- id: in_pep_xml
  doc: The input MSFragger TSV file.  [required]
  type: File
  inputBinding:
    prefix: --pepxml
- id: in_spectra
  doc: "The input mzXML or MGF (timsTOF only) file.\n[required]"
  type: File
  inputBinding:
    prefix: --spectra
- id: in_uni_mod
  doc: The input UniMod XML file.
  type: File
  inputBinding:
    prefix: --unimod
- id: in_psms
  doc: Output PSMs file.
  type: File
  inputBinding:
    prefix: --psms
- id: in_peaks
  doc: Output peaks file.
  type: File
  inputBinding:
    prefix: --peaks
- id: in_exclude_range
  doc: massdiff in this range will not be mapped to
  type: string
  inputBinding:
    prefix: --exclude-range
- id: in_max_delta_uni_mod
  doc: Maximum delta mass (Dalton) for UniMod
  type: double
  inputBinding:
    prefix: --max_delta_unimod
- id: in_max_delta_ppm
  doc: "Maximum delta mass (PPM) for annotation.\n[default: 15]"
  type: double
  inputBinding:
    prefix: --max_delta_ppm
- id: in_fragment_types
  doc: "Allowed fragment ion types (a,b,c,x,y,z).\n[default: b, y]"
  type: string
  inputBinding:
    prefix: --fragment_types
- id: in_fragment_charges
  doc: "Allowed fragment ion charges.  [default: 1,\n2, 3, 4]"
  type: long
  inputBinding:
    prefix: --fragment_charges
- id: in_enable_specific_losses
  doc: "/ --no-enable_specific_losses\nEnable specific fragment ion losses.\n[default:\
    \ False]"
  type: boolean
  inputBinding:
    prefix: --enable_specific_losses
- id: in_enable_unspecific_losses
  doc: "/ --no-enable_unspecific_losses\nEnable unspecific fragment ion losses.\n\
    [default: False]"
  type: boolean
  inputBinding:
    prefix: --enable_unspecific_losses
- id: in_subsample_fraction
  doc: "Data fraction used for subsampling.\n[default: 1.0]"
  type: double
  inputBinding:
    prefix: --subsample_fraction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_psms
  doc: Output PSMs file.
  type: File
  outputBinding:
    glob: $(inputs.in_psms)
- id: out_peaks
  doc: Output peaks file.
  type: File
  outputBinding:
    glob: $(inputs.in_peaks)
cwlVersion: v1.1
baseCommand:
- easypqp
- convert
