class: CommandLineTool
id: mhcflurry_class1_train_presentation_models.cwl
inputs:
- id: in_data
  doc: "Training data CSV. Expected columns: peptide, n_flank,\nc_flank, hit"
  type: File
  inputBinding:
    prefix: --data
- id: in_out_models_dir
  doc: Directory to write models and manifest
  type: Directory
  inputBinding:
    prefix: --out-models-dir
- id: in_affinity_predictor
  doc: Affinity predictor models dir
  type: string
  inputBinding:
    prefix: --affinity-predictor
- id: in_processing_predictor_with_flanks
  doc: Processing predictor with flanks
  type: string
  inputBinding:
    prefix: --processing-predictor-with-flanks
- id: in_processing_predictor_without_flanks
  doc: Processing predictor without flanks
  type: string
  inputBinding:
    prefix: --processing-predictor-without-flanks
- id: in_verbosity
  doc: 'Default: 1'
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_debug
  doc: Launch python debugger on error
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_hla_column
  doc: Column in data giving space-separated MHC I alleles
  type: string
  inputBinding:
    prefix: --hla-column
- id: in_target_column
  doc: "Column in data giving hit (1) vs decoy (0)\n"
  type: long
  inputBinding:
    prefix: --target-column
- id: in_train
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_class_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_presentation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_models_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-train-presentation-models
