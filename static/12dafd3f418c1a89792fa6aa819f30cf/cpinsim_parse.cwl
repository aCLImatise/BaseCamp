class: CommandLineTool
id: cpinsim_parse.cwl
inputs:
- id: interactions_without_constraints
  doc: Files containing the annotated pairwise interactions.
  type: long[]
  inputBinding:
    prefix: --interactions_without_constraints
- id: competitions
  doc: Files containing the annotated competitions.
  type: string[]
  inputBinding:
    prefix: --competitions
- id: allosteric_effects
  doc: Files containing the annotated allosteric effects.
  type: string[]
  inputBinding:
    prefix: --allosteric_effects
- id: output
  doc: Output file containing the parsed proteins.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- cpinsim
- parse
