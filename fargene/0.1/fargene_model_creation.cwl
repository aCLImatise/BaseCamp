class: CommandLineTool
id: fargene_model_creation.cwl
inputs:
- id: reference_sequences
  doc: The sequences that the model should be built of.
  type: string
  inputBinding:
    prefix: --reference-sequences
- id: negative_sequences
  doc: The sequences that should be used as the negative dataset. Should preferable
    be similar sequences but without the desired phenotype.
  type: string
  inputBinding:
    prefix: --negative-sequences
- id: output
  doc: The directory where the output should be saved.
  type: string
  inputBinding:
    prefix: --output
- id: model_name
  doc: The name of the new model
  type: string
  inputBinding:
    prefix: --modelname
- id: fragment_lengths
  doc: 'The length (aa) of the fragments that should be used to determine the threshold
    score for metagenomic input. (default: 33 AA)'
  type: string
  inputBinding:
    prefix: --fragment-lengths
- id: num_fragments
  doc: 'The number of fragments that should be created from each gene. (default: 10
    000)'
  type: string
  inputBinding:
    prefix: --num-fragments
- id: only_sens
  doc: Should be used if only sensitivity of the model should be estimated.
  type: boolean
  inputBinding:
    prefix: --only-sens
- id: only_spec
  doc: Should be used if only the specificity of the model should be estimated.
  type: boolean
  inputBinding:
    prefix: --only-spec
- id: only_full_length
  doc: Should be used if you only want to optimize the threshold score for full length
    genes.
  type: boolean
  inputBinding:
    prefix: --only-full-length
- id: only_fragments
  doc: Should be used if you only want to optimize the threshold score for full fragmented
    genes.
  type: boolean
  inputBinding:
    prefix: --only-fragments
outputs: []
cwlVersion: v1.1
baseCommand:
- fargene_model_creation
