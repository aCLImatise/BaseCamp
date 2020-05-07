class: CommandLineTool
id: chimChe.cwl
inputs:
- id: q
  doc: multi-fasta sequences to be analyzed
  type: string
  inputBinding:
    prefix: -q
- id: d
  doc: multi-fasta sequences to be indexed (if missing, -q file used)
  type: string
  inputBinding:
    prefix: -d
- id: k
  doc: the size of the substrings; <= 14, default 10
  type: string
  inputBinding:
    prefix: -k
- id: g
  doc: gives the number of bp to skip between segmentation tests
  type: string
  inputBinding:
    prefix: -g
- id: m
  doc: specifies smallest overlap to be used
  type: long
  inputBinding:
    prefix: -m
- id: f
  doc: full deflines to be printed
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: best simple, best left and best right to be trimmed to the same window, to
    reduce partial-sequence artifacts
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- chimChe
