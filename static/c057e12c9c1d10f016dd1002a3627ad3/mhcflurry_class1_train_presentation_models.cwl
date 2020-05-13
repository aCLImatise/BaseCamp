class: CommandLineTool
id: mhcflurry_class1_train_presentation_models.cwl
inputs:
- id: data
  doc: 'Training data CSV. Expected columns: peptide, n_flank, c_flank, hit'
  type: File
  inputBinding:
    prefix: --data
- id: out_models_dir
  doc: Directory to write models and manifest
  type: string
  inputBinding:
    prefix: --out-models-dir
- id: affinity_predictor
  doc: Affinity predictor models dir
  type: string
  inputBinding:
    prefix: --affinity-predictor
- id: processing_predictor_with_flanks
  doc: Processing predictor with flanks
  type: string
  inputBinding:
    prefix: --processing-predictor-with-flanks
- id: processing_predictor_without_flanks
  doc: Processing predictor without flanks
  type: string
  inputBinding:
    prefix: --processing-predictor-without-flanks
- id: verbosity
  doc: 'Default: 1'
  type: string
  inputBinding:
    prefix: --verbosity
- id: debug
  doc: Launch python debugger on error
  type: boolean
  inputBinding:
    prefix: --debug
- id: hla_column
  doc: Column in data giving space-separated MHC I alleles
  type: string
  inputBinding:
    prefix: --hla-column
- id: target_column
  doc: Column in data giving hit (1) vs decoy (0)
  type: string
  inputBinding:
    prefix: --target-column
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-class1-train-presentation-models
