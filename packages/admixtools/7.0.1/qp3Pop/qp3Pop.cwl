class: CommandLineTool
id: qp3Pop.cwl
inputs:
- id: in_use_nam_name
  doc: '... use <nam> as snp details name.'
  type: string?
  inputBinding:
    prefix: -f
- id: in_use_parameters_file
  doc: '... use parameters from <file> .'
  type: File?
  inputBinding:
    prefix: -p
- id: in_locount_n_popfilename
  doc: '... locount -n popfilename.'
  type: string?
  inputBinding:
    prefix: -L
- id: in__hicount_popfilename
  doc: '... hicount -n popfilename.'
  type: string?
  inputBinding:
    prefix: -H
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
- qp3Pop
