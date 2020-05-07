class: CommandLineTool
id: cpinsim_annotate.cwl
inputs:
- id: interactions_without_constraints
  doc: 'Files containing the underlying network: pairwise interactions without constraints.
    Two columns InteractorA | InteractorB'
  type: File[]
  inputBinding:
    prefix: --interactions_without_constraints
- id: competitions
  doc: 'Files containing the competitions. Two columns: Host | Competitors (comma
    separated)'
  type: File[]
  inputBinding:
    prefix: --competitions
- id: allosteric_effects
  doc: 'Files containing the allosteric effects. Four columns: Host | Interactor |
    Activator | Inhibitor'
  type: File[]
  inputBinding:
    prefix: --allosteric_effects
- id: extended_inference
  doc: Extended inference for missing domains in competitions.
  type: boolean
  inputBinding:
    prefix: --extended_inference
- id: output_interactions
  doc: One output file containing all annotated pairwise interactions.
  type: File
  inputBinding:
    prefix: --output_interactions
- id: output_competitions
  doc: One output file containing all annotated competitions.
  type: File
  inputBinding:
    prefix: --output_competitions
- id: output_allosteric_s
  doc: One output file containing all annotated allosteric effects.
  type: File
  inputBinding:
    prefix: --output_allosterics
outputs: []
cwlVersion: v1.1
baseCommand:
- cpinsim
- annotate
