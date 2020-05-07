class: CommandLineTool
id: weight.cwl
inputs:
- id: b
  doc: ': use BLOSUM weighting scheme at <f> fractional identity'
  type: string
  inputBinding:
    prefix: -b
- id: f
  doc: ': filter out seqs w/ fractional ident > <x> [0-1]'
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: ': save weight-annotated alignment in <outfile>'
  type: File
  inputBinding:
    prefix: -o
- id: p
  doc: ': use position based weight scheme (Henikoff & Henikoff)'
  type: boolean
  inputBinding:
    prefix: -p
- id: s
  doc: ': sample <n> sequences at random into a new alignment'
  type: string
  inputBinding:
    prefix: -s
- id: v
  doc: ': use Voronoi weight scheme (Sibbald & Argos) '
  type: boolean
  inputBinding:
    prefix: -v
- id: in_format
  doc: ': specify alignment file format <s> allowed formats: SELEX, MSF, Clustal,
    a2m, PHYLIP'
  type: string
  inputBinding:
    prefix: --informat
- id: quiet
  doc: ': suppress verbose banner'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- weight
