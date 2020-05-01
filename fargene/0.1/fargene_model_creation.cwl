#!/usr/bin/env cwl-runner

baseCommand:
- fargene_model_creation
class: CommandLineTool
cwlVersion: v1.0
id: fargene_model_creation
inputs:
- doc: The sequences that the model should be built of.
  id: reference_sequences
  inputBinding:
    prefix: --reference-sequences
  type: string
- doc: The sequences that should be used as the negative dataset. Should preferable
    be similar sequences but without the desired phenotype.
  id: negative_sequences
  inputBinding:
    prefix: --negative-sequences
  type: string
- doc: The directory where the output should be saved.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The name of the new model
  id: model_name
  inputBinding:
    prefix: --modelname
  type: string
- doc: 'The length (aa) of the fragments that should be used to determine the threshold
    score for metagenomic input. (default: 33 AA)'
  id: fragment_lengths
  inputBinding:
    prefix: --fragment-lengths
  type: string
- doc: 'The number of fragments that should be created from each gene. (default: 10
    000)'
  id: num_fragments
  inputBinding:
    prefix: --num-fragments
  type: string
- doc: Should be used if only sensitivity of the model should be estimated.
  id: only_sens
  inputBinding:
    prefix: --only-sens
  type: boolean
- doc: Should be used if only the specificity of the model should be estimated.
  id: only_spec
  inputBinding:
    prefix: --only-spec
  type: boolean
- doc: Should be used if you only want to optimize the threshold score for full length
    genes.
  id: only_full_length
  inputBinding:
    prefix: --only-full-length
  type: boolean
- doc: Should be used if you only want to optimize the threshold score for full fragmented
    genes.
  id: only_fragments
  inputBinding:
    prefix: --only-fragments
  type: boolean
