class: CommandLineTool
id: matOptimize.cwl
inputs:
- id: in_arg_input_mutationannotated
  doc: "[ --input-mat ] arg                Input mutation-annotated tree file to\n\
    optimize [REQUIRED]."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_output_optimized
  doc: "[ --output-mat ] arg               Output optimized mutation-annotated\ntree\
    \ file [REQUIRED]."
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_radius_restrict
  doc: '[ --radius ] arg (=10)             Radius in which to restrict the SPR'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_periodically_save
  doc: "[ --save-every-seconds ] arg (=300)\nPeriodically save the optimized tree\n\
    after every specified number of seconds\nhave elapsed since the last save."
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_arg_number_use
  doc: "[ --threads ] arg (=2)             Number of threads to use when possible\n\
    [DEFAULT uses all available cores, 2\ndetected on this machine]"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_moves_dot
  doc: -s [ --optimization-seconds ] arg (=3600)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_optimized
  doc: "[ --output-mat ] arg               Output optimized mutation-annotated\ntree\
    \ file [REQUIRED]."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_optimized)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/usher:0.2.0--hfcd16c1_0
cwlVersion: v1.1
baseCommand:
- matOptimize
