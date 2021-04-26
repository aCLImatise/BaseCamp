class: CommandLineTool
id: pan_pipe.cwl
inputs:
- id: in_threads
  doc: Number of threads to use for parallel commands. Will be overridden by values
    in *_args options
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_roar_y_args
  doc: "a quoted string of arguments to pass to roary, e.g.: '-p 8 -s -e --mafft'"
  type: boolean?
  inputBinding:
    prefix: --roary_args
- id: in_pro_kk_a_args
  doc: "a quoted string of arguments to pass to prokka, e.g: '--rawproduct --proteins\
    \ prots.gbk'"
  type: boolean?
  inputBinding:
    prefix: --prokka_args
- id: in_gif_rop_args
  doc: "a quoted string of arguments to pass to gifrop, e.g: '--no_plots -m 7'"
  type: boolean?
  inputBinding:
    prefix: --gifrop_args
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- pan_pipe
