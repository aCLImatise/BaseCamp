class: CommandLineTool
id: hydra_multi.sh_run.cwl
inputs:
- id: in_number_threads_use
  doc: 'Number of threads to use. [Default: 2]'
  type: long?
  inputBinding:
    prefix: -t
- id: in_punt_parameter_breakpoint
  doc: "The punt parameter for breakpoint assembly.\nThis value will be multiplied\
    \ by the number of datasets in the analysis.\nRecommended: The  average read coverage\
    \ of all datasets analyzed multipled by 5.\nExample: 3 Datasets average 30x, the\
    \ input value is 150.\nThe default assumes 10x datasets [Default: 50]"
  type: long?
  inputBinding:
    prefix: -p
- id: in_stub_output_file
  doc: The stub for the output file names
  type: File?
  inputBinding:
    prefix: -o
- id: in_stub_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stub_output_file
  doc: The stub for the output file names
  type: File?
  outputBinding:
    glob: $(inputs.in_stub_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- hydra-multi.sh
- run
