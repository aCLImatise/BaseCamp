class: CommandLineTool
id: varlociraptor_filter_calls_posterior_odds.cwl
inputs:
- id: events
  doc: '...    Events to consider.'
  type: string
  inputBinding:
    prefix: --events
- id: odds
  doc: 'Kass-Raftery score to filter against. [possible values: none, barely, positive,
    strong, very-strong]'
  type: string
  inputBinding:
    prefix: --odds
outputs: []
cwlVersion: v1.1
baseCommand:
- varlociraptor
- filter-calls
- posterior-odds
