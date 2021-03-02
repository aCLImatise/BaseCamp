class: CommandLineTool
id: backspin.cwl
inputs:
- id: in_i
  doc: '[inputfile]'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input
  doc: "=[inputfile]\nPath of the cef formatted tab delimited file.\nRows should be\
    \ genes and columns single cells/samples.\nFor further information on the cef\
    \ format visit:\nhttps://github.com/linnarsson-lab/ceftools"
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_o
  doc: '[outputfile]'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_output
  doc: "=[outputfile]\nThe name of the file to which the output will be written"
  type: File?
  inputBinding:
    prefix: --output
- id: in_depthnumber_levels_number
  doc: "[int]\nDepth/Number of levels: The number of nested splits that will be tried\
    \ by the algorithm"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_number_iterations_used_preparatory
  doc: "[int]\nNumber of the iterations used in the preparatory SPIN.\nDefaults to\
    \ 10"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_feature_selection_performed
  doc: "[int]\nFeature selection is performed before BackSPIN. Argument controls how\
    \ many genes are seleceted.\nSelection is based on expected noise (a curve fit\
    \ to the CV-vs-mean plot)."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_width_parameter_used
  doc: "[float]\nControls the decrease rate of the width parameter used in the preparatory\
    \ SPIN.\nSmaller values will increase the number of SPIN iterations and result\
    \ in higher\nprecision in the first step but longer execution time.\nDefaults\
    \ to 0.1"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_number_iterations_used_width
  doc: "[int]\nNumber of the iterations used for every width parameter.\nDoes not\
    \ apply on the first run (use -t instead)\nDefaults to 8"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_controls_rate_parametersmaller
  doc: "[float]\nControls the decrease rate of the width parameter.\nSmaller values\
    \ will increase the number of SPIN iterations and result in higher\nprecision\
    \ but longer execution time.\nDoes not apply on the first run (use -s instead)\n\
    Defaults to 0.3"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_minimal_number_genes_group_contain
  doc: "[int]\nMinimal number of genes that a group must contain for splitting to\
    \ be allowed.\nDefaults to 2"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_minimal_number_cells_group_contain
  doc: "[int]\nMinimal number of cells that a group must contain for splitting to\
    \ be allowed.\nDefaults to 2"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_minimum_score_has
  doc: "[float]\nMinimum score that a breaking point has to reach to be suitable for\
    \ splitting.\nDefaults to 1.15"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_difference_average_expression
  doc: "[float]\nIf the difference between the average expression of two groups is\
    \ lower than threshold the algorythm\nuses higly correlated genes to assign the\
    \ gene to one of the two groups\nDefaults to 0.2"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_run_normal_spin
  doc: "[axisvalue]\nRun normal SPIN instead of backSPIN.\nNormal spin accepts the\
    \ parameters -T -S\nAn axis value 0 to only sort genes (rows), 1 to only sort\
    \ cells (columns) or 'both' for both\nmust be passed"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_verbose_print_details
  doc: "Verbose. Print  to the stdoutput extra details of what is happening\n"
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "=[outputfile]\nThe name of the file to which the output will be written"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- backspin
