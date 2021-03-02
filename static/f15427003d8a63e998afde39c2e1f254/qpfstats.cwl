class: CommandLineTool
id: qpfstats.cwl
inputs:
- id: in_use_va_base
  doc: '... use <va> as base value.'
  type: string?
  inputBinding:
    prefix: -b
- id: in_use_parameters_file
  doc: '... use parameters from <file> .'
  type: File?
  inputBinding:
    prefix: -p
- id: in_use_val_seed
  doc: '... use <val> as seed.'
  type: string?
  inputBinding:
    prefix: -s
- id: in_use_val_lambda
  doc: '... use <val> as lambda scale.'
  type: string?
  inputBinding:
    prefix: -l
- id: in_print_version_exit
  doc: '... print version and exit.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_toggle_verbose_mode
  doc: '... toggle verbose mode ON.'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_toggle_doanalysis_on
  doc: '... toggle doAnalysis ON.'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0
cwlVersion: v1.1
baseCommand:
- qpfstats
