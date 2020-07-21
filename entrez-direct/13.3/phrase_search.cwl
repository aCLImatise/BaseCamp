class: CommandLineTool
id: ../../../phrase_search.cwl
inputs:
- id: decreases_expressionproduction
  doc: decreases expression/production
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: affects expression/production (neutral)
  type: string
  inputBinding:
    position: 1
- id: inhibits
  doc: inhibits
  type: string
  inputBinding:
    position: 2
- id: transport_channels
  doc: transport, channels
  type: string
  inputBinding:
    position: 0
- id: metabolism_pharmacokinetics
  doc: metabolism, pharmacokinetics
  type: string
  inputBinding:
    position: 1
- id: enzyme_activity
  doc: enzyme activity
  type: string
  inputBinding:
    position: 2
- id: treatmenttherapy_including_investigatory
  doc: treatment/therapy (including investigatory)
  type: string
  inputBinding:
    position: 0
- id: inhibits_growth_cancers
  doc: inhibits cell growth (especially cancers)
  type: string
  inputBinding:
    position: 1
- id: sa
  doc: side effect/adverse event
  type: string
  inputBinding:
    position: 2
- id: pr
  doc: prevents, suppresses
  type: string
  inputBinding:
    position: 3
- id: pa
  doc: alleviates, reduces
  type: string
  inputBinding:
    position: 4
- id: jc
  doc: role in disease pathogenesis
  type: string
  inputBinding:
    position: 5
- id: mp
  doc: biomarkers (of disease progression)
  type: string
  inputBinding:
    position: 0
- id: causal_mutations
  doc: causal mutations
  type: string
  inputBinding:
    position: 0
- id: ud
  doc: mutations affecting disease course
  type: string
  inputBinding:
    position: 1
- id: drug_targets
  doc: drug targets
  type: string
  inputBinding:
    position: 2
- id: jg
  doc: role in pathogenesis
  type: string
  inputBinding:
    position: 3
- id: te
  doc: possible therapeutic effect
  type: string
  inputBinding:
    position: 4
- id: polymorphisms_alter_risk
  doc: polymorphisms alter risk
  type: string
  inputBinding:
    position: 5
- id: promotes_progression
  doc: promotes progression
  type: string
  inputBinding:
    position: 6
- id: md
  doc: biomarkers (diagnostic)
  type: string
  inputBinding:
    position: 0
- id: overexpression_in_disease
  doc: overexpression in disease
  type: string
  inputBinding:
    position: 1
- id: improper_regulation_linked
  doc: improper regulation linked to disease
  type: string
  inputBinding:
    position: 2
- id: eg
  doc: affects expression/production (neutral)
  type: string
  inputBinding:
    position: 0
- id: signaling_pathway
  doc: signaling pathway
  type: string
  inputBinding:
    position: 1
- id: same_protein_complex
  doc: same protein or complex
  type: string
  inputBinding:
    position: 2
- id: rg
  doc: regulation
  type: string
  inputBinding:
    position: 3
- id: production_cell_population
  doc: production by cell population
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- phrase-search
