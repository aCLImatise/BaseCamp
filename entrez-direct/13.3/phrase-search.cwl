#!/usr/bin/env cwl-runner

baseCommand:
- phrase-search
class: CommandLineTool
cwlVersion: v1.0
id: phrase-search
inputs:
- doc: decreases expression/production
  id: ec
  inputBinding:
    position: 0
  type: string
- doc: affects expression/production (neutral)
  id: ec
  inputBinding:
    position: 1
  type: string
- doc: inhibits
  id: n
  inputBinding:
    position: 2
  type: string
- doc: transport, channels
  id: o
  inputBinding:
    position: 0
  type: string
- doc: metabolism, pharmacokinetics
  id: k
  inputBinding:
    position: 1
  type: string
- doc: enzyme activity
  id: z
  inputBinding:
    position: 2
  type: string
- doc: treatment/therapy (including investigatory)
  id: t
  inputBinding:
    position: 0
  type: string
- doc: inhibits cell growth (especially cancers)
  id: c
  inputBinding:
    position: 1
  type: string
- doc: side effect/adverse event
  id: sa
  inputBinding:
    position: 2
  type: string
- doc: prevents, suppresses
  id: pr
  inputBinding:
    position: 3
  type: string
- doc: alleviates, reduces
  id: pa
  inputBinding:
    position: 4
  type: string
- doc: role in disease pathogenesis
  id: jc
  inputBinding:
    position: 5
  type: string
- doc: biomarkers (of disease progression)
  id: mp
  inputBinding:
    position: 0
  type: string
- doc: causal mutations
  id: u
  inputBinding:
    position: 0
  type: string
- doc: mutations affecting disease course
  id: ud
  inputBinding:
    position: 1
  type: string
- doc: drug targets
  id: d
  inputBinding:
    position: 2
  type: string
- doc: role in pathogenesis
  id: jg
  inputBinding:
    position: 3
  type: string
- doc: possible therapeutic effect
  id: te
  inputBinding:
    position: 4
  type: string
- doc: polymorphisms alter risk
  id: y
  inputBinding:
    position: 5
  type: string
- doc: promotes progression
  id: g
  inputBinding:
    position: 6
  type: string
- doc: biomarkers (diagnostic)
  id: md
  inputBinding:
    position: 0
  type: string
- doc: overexpression in disease
  id: x
  inputBinding:
    position: 1
  type: string
- doc: improper regulation linked to disease
  id: l
  inputBinding:
    position: 2
  type: string
- doc: affects expression/production (neutral)
  id: eg
  inputBinding:
    position: 0
  type: string
- doc: signaling pathway
  id: i
  inputBinding:
    position: 1
  type: string
- doc: same protein or complex
  id: h
  inputBinding:
    position: 2
  type: string
- doc: regulation
  id: rg
  inputBinding:
    position: 3
  type: string
- doc: production by cell population
  id: q
  inputBinding:
    position: 4
  type: string
