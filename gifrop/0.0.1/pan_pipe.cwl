class: CommandLineTool
id: pan_pipe.cwl
inputs:
- id: threads
  doc: Number of threads to use for parallel commands. Will be overridden by values
    in *_args options
  type: boolean
  inputBinding:
    prefix: --threads
- id: roar_y_args
  doc: "a quoted string of arguments to pass to roary, e.g.: '-t 8 -s -e --mafft'"
  type: boolean
  inputBinding:
    prefix: --roary_args
- id: pro_kk_a_args
  doc: "a quoted string of arguments to pass to prokka, e.g: '--rawproduct --proteins\
    \ prots.gbk'"
  type: boolean
  inputBinding:
    prefix: --prokka_args
- id: gif_rop_args
  doc: "a quoted string of arguments to pass to gifrop, e.g: '--no_plots -m 7'"
  type: boolean
  inputBinding:
    prefix: --gifrop_args
outputs: []
cwlVersion: v1.1
baseCommand:
- pan_pipe
