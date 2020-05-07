class: CommandLineTool
id: phrase_search.cwl
inputs:
- id: ec
  doc: decreases expression/production
  type: string
  inputBinding:
    position: 0
- id: ec
  doc: affects expression/production (neutral)
  type: string
  inputBinding:
    position: 1
- id: n
  doc: inhibits
  type: string
  inputBinding:
    position: 2
- id: o
  doc: transport, channels
  type: string
  inputBinding:
    position: 0
- id: k
  doc: metabolism, pharmacokinetics
  type: string
  inputBinding:
    position: 1
- id: z
  doc: enzyme activity
  type: string
  inputBinding:
    position: 2
- id: t
  doc: treatment/therapy (including investigatory)
  type: string
  inputBinding:
    position: 0
- id: c
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
- id: u
  doc: causal mutations
  type: string
  inputBinding:
    position: 0
- id: ud
  doc: mutations affecting disease course
  type: string
  inputBinding:
    position: 1
- id: d
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
- id: y
  doc: polymorphisms alter risk
  type: string
  inputBinding:
    position: 5
- id: g
  doc: promotes progression
  type: string
  inputBinding:
    position: 6
- id: md
  doc: biomarkers (diagnostic)
  type: string
  inputBinding:
    position: 0
- id: x
  doc: overexpression in disease
  type: string
  inputBinding:
    position: 1
- id: l
  doc: improper regulation linked to disease
  type: string
  inputBinding:
    position: 2
- id: eg
  doc: affects expression/production (neutral)
  type: string
  inputBinding:
    position: 0
- id: i
  doc: signaling pathway
  type: string
  inputBinding:
    position: 1
- id: h
  doc: same protein or complex
  type: string
  inputBinding:
    position: 2
- id: rg
  doc: regulation
  type: string
  inputBinding:
    position: 3
- id: q
  doc: production by cell population
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- phrase-search
