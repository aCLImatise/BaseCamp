class: CommandLineTool
id: ../../../qtofpeakpicker.cwl
inputs:
- id: produce_help_message
  doc: '[ --help ]               produce help message'
  type: boolean
  inputBinding:
    prefix: -H
- id: produces_version_information
  doc: '[ --version ]            produces version information'
  type: boolean
  inputBinding:
    prefix: -V
- id: arg_input_file
  doc: '[ --in ] arg             input file'
  type: boolean
  inputBinding:
    prefix: -I
- id: arg_output_file
  doc: '[ --out ] arg            output file'
  type: boolean
  inputBinding:
    prefix: -O
- id: arg_configuration_file
  doc: '[ --config-file ] arg    configuration file'
  type: boolean
  inputBinding:
    prefix: -C
- id: resolution
  doc: (=20000)   instrument resolution.
  type: string
  inputBinding:
    prefix: --resolution
- id: area
  doc: (=1)             default area, otherwise store intensity (0).
  type: string
  inputBinding:
    prefix: --area
- id: threshold
  doc: (=10)       removes peaks less than threshold times smallest  intensity in
    spectrum
  type: string
  inputBinding:
    prefix: --threshold
- id: number_of_peaks
  doc: (=0)    maximum number of peaks per spectrum (0 = no  limit)
  type: string
  inputBinding:
    prefix: --numberofpeaks
- id: arg_peak_apex
  doc: '[ --widthint ] arg (=2)  peak apex +- integration width'
  type: boolean
  inputBinding:
    prefix: -i
- id: smooth_width
  doc: (=1)      smoothing width
  type: string
  inputBinding:
    prefix: --smoothwidth
outputs: []
cwlVersion: v1.1
baseCommand:
- qtofpeakpicker
