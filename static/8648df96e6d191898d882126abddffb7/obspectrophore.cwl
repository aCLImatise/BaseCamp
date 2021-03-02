class: CommandLineTool
id: obspectrophore.cwl
inputs:
- id: in__input_file
  doc: '[required]: input file'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__stereo_treatment
  doc: '[optional]: stereo treatment'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__implementation_details
  doc: '[optional]: implementation details'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_specifies_kind_be
  doc: ": Specifies the kind of normalization that should be performed.\nValid values\
    \ are (without quotes):\nNo (default)\nZeroMean\nUnitStd\nZeroMeanAndUnitStd"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_specifies_required_accuracy
  doc: ": Specifies the required accuracy expressed as the angular stepsize.\nOnly\
    \ the following discrete values are allowed:\n1, 2, 5, 10, 15, 20 (default), 30,\
    \ 36, 45, 60"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_specifies_required_resolution
  doc: ": Specifies the required resolution expressed as a real positive number.\n\
    The default value is 3.0 Angstrom. Negative values or a value equal\nto 0 generate\
    \ an error message"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_parameters
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openbabel:3.1.1
cwlVersion: v1.1
baseCommand:
- obspectrophore
