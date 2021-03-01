class: CommandLineTool
id: bp_netinstall.pl.cwl
inputs:
- id: in_dev
  doc: Use the development version of bioperl from git
  type: boolean?
  inputBinding:
    prefix: --dev
- id: in_build_param_str
  doc: Parameters that are passed in at 'perl Build.PL'
  type: string?
  inputBinding:
    prefix: --build_param_str
- id: in_install_param_str
  doc: "Use this string to predefine './Build install'\nparameters such as 'install_base'\
    \ for\nbioperl installation"
  type: string?
  inputBinding:
    prefix: --install_param_str
- id: in_bioperl_path
  doc: Path to BioPerl tarball (will not download BioPerl)
  type: boolean?
  inputBinding:
    prefix: --bioperl_path
- id: in_skip_start
  doc: Don't wait for 'Enter' at program start
  type: boolean?
  inputBinding:
    prefix: --skip_start
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_don
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_that
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bioperl
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_passed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tarball
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_at
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_netinstall.pl
