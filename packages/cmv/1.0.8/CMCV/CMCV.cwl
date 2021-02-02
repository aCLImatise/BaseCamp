class: CommandLineTool
id: CMCV.cwl
inputs:
- id: in_cm_compare_result_file
  doc: Path to CMCompare result file
  type: File
  inputBinding:
    prefix: --cmcompareresultfile
- id: in_models_file
  doc: Path to covariance model file
  type: File
  inputBinding:
    prefix: --modelsfile
- id: in_alignment_file
  doc: Path to stockholm alignment file
  type: File
  inputBinding:
    prefix: --alignmentfile
- id: in_model_detail
  doc: "Set verbosity of drawn models:\nminimal, simple, detailed"
  type: string
  inputBinding:
    prefix: --modeldetail
- id: in_model_layout
  doc: 'Set layout of drawn models: flat, tree'
  type: string
  inputBinding:
    prefix: --modellayout
- id: in_emission_layout
  doc: "Set layout of drawn models: score,\nprobability, box (Default: box)"
  type: string
  inputBinding:
    prefix: --emissionlayout
- id: in_alignment_entries
  doc: "Set cutoff for included stockholm\nalignment entries (Default: 50)"
  type: long
  inputBinding:
    prefix: --alignmententries
- id: in_transition_cut_off
  doc: "Minimal value for a transition\nprobability to be displayed (Default:\n0.01)"
  type: long
  inputBinding:
    prefix: --transitioncutoff
- id: in_maxwidth
  doc: "Set maximal width of result figure\n(Default: 100)"
  type: long
  inputBinding:
    prefix: --maxwidth
- id: in_scaling_factor
  doc: "Set uniform scaling factor for image\nsize (Default: 2)"
  type: long
  inputBinding:
    prefix: --scalingfactor
- id: in_comparison_alignment
  doc: 'Set layout of drawn models: model,'
  type: string
  inputBinding:
    prefix: --comparisonalignment
- id: in_output_directory_path
  doc: 'Output directory path (Default: none)'
  type: File
  inputBinding:
    prefix: --outputdirectorypath
- id: in_secondary_structure_vis_tool
  doc: "Select tool for secondary structure\nvisualisation: forna, r2r (Default:\n\
    none)"
  type: long
  inputBinding:
    prefix: --secondarystructurevistool
- id: in_model_name_toggle
  doc: "Write all comma separted model names\nto modelNames file (Default: False)"
  type: boolean
  inputBinding:
    prefix: --modelnametoggle
- id: in_numeric_version
  doc: Print just the version number
  type: boolean
  inputBinding:
    prefix: --numeric-version
- id: in_verbose
  doc: Loud verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_comparison
  doc: '-f --outputformat=ITEM               Output image format: pdf, svg, png, ps'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_path
  doc: 'Output directory path (Default: none)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_directory_path)
cwlVersion: v1.1
baseCommand:
- CMCV
