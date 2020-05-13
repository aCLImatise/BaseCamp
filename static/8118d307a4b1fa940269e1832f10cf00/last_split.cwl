class: CommandLineTool
id: last_split.cwl
inputs:
- id: last_alignments_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: format
  doc: 'output format: MAF, MAF+ (default=MAF+)'
  type: string
  inputBinding:
    prefix: --format
- id: genome
  doc: lastdb genome name
  type: string
  inputBinding:
    prefix: --genome
- id: direction
  doc: 'RNA direction: 0=reverse, 1=forward, 2=mixed (default=1)'
  type: string
  inputBinding:
    prefix: --direction
- id: cis
  doc: cis-splice probability per base (default=0.004)
  type: string
  inputBinding:
    prefix: --cis
- id: trans
  doc: trans-splice probability per base (default=1e-05)
  type: string
  inputBinding:
    prefix: --trans
- id: mean
  doc: mean of ln[intron length] (default=7)
  type: string
  inputBinding:
    prefix: --mean
- id: sdev
  doc: standard deviation of ln[intron length] (default=1.7)
  type: string
  inputBinding:
    prefix: --sdev
- id: mis_map
  doc: maximum mismap probability (default=1)
  type: string
  inputBinding:
    prefix: --mismap
- id: score
  doc: minimum alignment score (default=e OR e+t*ln[100])
  type: long
  inputBinding:
    prefix: --score
- id: no_split
  doc: write original, not split, alignments
  type: boolean
  inputBinding:
    prefix: --no-split
- id: bytes
  doc: maximum memory (default=8T for split, 8G for spliced)
  type: string
  inputBinding:
    prefix: --bytes
- id: verbose
  doc: be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- last-split
