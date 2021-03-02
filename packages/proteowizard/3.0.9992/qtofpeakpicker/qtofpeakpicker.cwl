class: CommandLineTool
id: qtofpeakpicker.cwl
inputs:
- id: in_produce_help_message
  doc: '[ --help ]               produce help message'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_produces_version_information
  doc: '[ --version ]            produces version information'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_arg_input_file
  doc: '[ --in ] arg             input file'
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_arg_output_file
  doc: '[ --out ] arg            output file'
  type: File?
  inputBinding:
    prefix: -O
- id: in_arg_configuration_file
  doc: '[ --config-file ] arg    configuration file'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_resolution
  doc: (=20000)   instrument resolution.
  type: long?
  inputBinding:
    prefix: --resolution
- id: in_area
  doc: (=1)             default area, otherwise store intensity (0).
  type: long?
  inputBinding:
    prefix: --area
- id: in_threshold
  doc: "(=10)       removes peaks less than threshold times smallest\nintensity in\
    \ spectrum"
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_number_of_peaks
  doc: "(=0)    maximum number of peaks per spectrum (0 = no\nlimit)"
  type: long?
  inputBinding:
    prefix: --numberofpeaks
- id: in_arg_peak_apex
  doc: '[ --widthint ] arg (=2)  peak apex +- integration width'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_smooth_width
  doc: (=1)      smoothing width
  type: long?
  inputBinding:
    prefix: --smoothwidth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --out ] arg            output file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- qtofpeakpicker
