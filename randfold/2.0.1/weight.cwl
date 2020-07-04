class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/weight.cwl
inputs:
- id: use_blosum_scheme
  doc: ': use BLOSUM weighting scheme at <f> fractional identity'
  type: string
  inputBinding:
    prefix: -b
- id: filter_seqs_fractional
  doc: ': filter out seqs w/ fractional ident > <x> [0-1]'
  type: string
  inputBinding:
    prefix: -f
- id: save_weightannotated_alignment
  doc: ': save weight-annotated alignment in <outfile>'
  type: File
  inputBinding:
    prefix: -o
- id: use_position_henikoff
  doc: ': use position based weight scheme (Henikoff & Henikoff)'
  type: boolean
  inputBinding:
    prefix: -p
- id: sample_n_sequences
  doc: ': sample <n> sequences at random into a new alignment'
  type: string
  inputBinding:
    prefix: -s
- id: use_voronoi_scheme
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
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- weight
