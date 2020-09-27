class: CommandLineTool
id: cpinsim_parse.cwl
inputs:
- id: in_interactions_without_constraints
  doc: Files containing the annotated pairwise interactions.
  type: string[]
  inputBinding:
    prefix: --interactions_without_constraints
- id: in_competitions
  doc: Files containing the annotated competitions.
  type: string[]
  inputBinding:
    prefix: --competitions
- id: in_allosteric_effects
  doc: Files containing the annotated allosteric effects.
  type: string[]
  inputBinding:
    prefix: --allosteric_effects
- id: in_output
  doc: "Output file containing the parsed proteins.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file containing the parsed proteins.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- cpinsim
- parse
