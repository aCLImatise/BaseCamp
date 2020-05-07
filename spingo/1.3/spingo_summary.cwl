class: CommandLineTool
id: spingo_summary.py.cwl
inputs:
- id: results_file
  doc: Input file name
  type: string
  inputBinding:
    position: 0
- id: level
  doc: Level to summarize. Default=3 (species)
  type: string
  inputBinding:
    prefix: --level
- id: similarity
  doc: Similarity score threshold [0-1]. Default=0.5
  type: string
  inputBinding:
    prefix: --similarity
- id: threshold
  doc: bootstrap threshold cutoff [0-1]. Defualt=0.8
  type: string
  inputBinding:
    prefix: --threshold
- id: percent
  doc: Display summary as a percentage instead of raw counts.
  type: boolean
  inputBinding:
    prefix: --percent
outputs: []
cwlVersion: v1.1
baseCommand:
- spingo_summary.py
