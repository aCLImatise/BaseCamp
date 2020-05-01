#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-class1-train-presentation-models
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-class1-train-presentation-models
inputs:
- doc: 'Training data CSV. Expected columns: peptide, n_flank, c_flank, hit'
  id: data
  inputBinding:
    prefix: --data
  type: File
- doc: Directory to write models and manifest
  id: out_models_dir
  inputBinding:
    prefix: --out-models-dir
  type: string
- doc: Affinity predictor models dir
  id: affinity_predictor
  inputBinding:
    prefix: --affinity-predictor
  type: string
- doc: Processing predictor with flanks
  id: processing_predictor_with_flanks
  inputBinding:
    prefix: --processing-predictor-with-flanks
  type: string
- doc: Processing predictor without flanks
  id: processing_predictor_without_flanks
  inputBinding:
    prefix: --processing-predictor-without-flanks
  type: string
- doc: 'Default: 1'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: Launch python debugger on error
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Column in data giving space-separated MHC I alleles
  id: hla_column
  inputBinding:
    prefix: --hla-column
  type: string
- doc: Column in data giving hit (1) vs decoy (0)
  id: target_column
  inputBinding:
    prefix: --target-column
  type: string
