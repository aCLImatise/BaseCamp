class: CommandLineTool
id: bp_netinstall.pl.cwl
inputs:
- id: dev
  doc: Use the development version of bioperl from git
  type: boolean
  inputBinding:
    prefix: --dev
- id: build_param_str
  doc: Parameters that are passed in at 'perl Build.PL'
  type: string
  inputBinding:
    prefix: --build_param_str
- id: install_param_str
  doc: Use this string to predefine './Build install' parameters such as 'install_base'
    for bioperl installation
  type: string
  inputBinding:
    prefix: --install_param_str
- id: bioperl_path
  doc: Path to BioPerl tarball (will not download BioPerl)
  type: boolean
  inputBinding:
    prefix: --bioperl_path
- id: skip_start
  doc: Don't wait for 'Enter' at program start
  type: boolean
  inputBinding:
    prefix: --skip_start
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_netinstall.pl
